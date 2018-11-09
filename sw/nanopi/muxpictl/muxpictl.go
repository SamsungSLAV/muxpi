/*
 *  Copyright (c) 2017-2018 Samsung Electronics Co., Ltd All Rights Reserved
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License
 */

// Package muxpictl implements communication with STM32F030 microcontroller found on MuxPi.
// For brevity sake, MuxPi's microcontroller will be referred to as uC i rest of godoc of this pkg.
package muxpictl

//go:generate go-rpcgen --source=muxpictl.go --type=UserInterface --service Interface --target=rpc_user.go
//go:generate go-rpcgen --source=muxpictl.go --type=Interface --target=rpc_admin.go

import (
	"bufio"
	"fmt"
	"io"
	"strconv"
	"strings"
	"sync"
	"time"

	"github.com/tarm/serial"
)

const (
	respOK     = "OK"
	retryLimit = 8

	sampleSizeLimit   = 120960000            // 100 samples/s over 2 weeks
	samplePeriodLimit = 3 * time.Millisecond // 333 Hz (444 Hz is achievable)
)

// Color denotes a string representation of a color accepted by uC.
//
// MuxPi has only two colors available: orange (foreground), black (background).
type Color string

const (
	// Foreground is displayed as orange, usually (255, 128, 0) in RGB notation.
	Foreground Color = "on"
	// Background is black, no pixels are lighted.
	Background Color = "off"
)

// LED represents all LEDs available via uC.
type LED string

const (
	// LED1 is an RGB LED located in the bottom-left corner of MuxPi.
	LED1 LED = "1"
	// LED2 is an RGB LED located on the right of the OLED display.
	LED2 LED = "2"
)

// Dyper represents all DYPERs available via uC.
type Dyper string

const (
	// DYPER1 is Dyper controlling the left column of pins.
	DYPER1 Dyper = "dyper 1"
	// DYPER2 is Dyper controlling the right column of pins.
	DYPER2 Dyper = "dyper 2"
)

// MuxPiCtl provides methods to execute commands via serial interface.
//
// It is safe for concurrent use.
type MuxPiCtl struct {
	config *serial.Config
	port   *serial.Port
	reader *bufio.Reader
	mux    *sync.Mutex

	// sample recording related fields
	sample       []int
	sampleTicker *time.Ticker
	sampleStop   chan struct{}
	sampleMux    *sync.Mutex
}

// UserInterface contains methods  intended to be used by a regular user and admin.
type UserInterface interface {
	PowerTick(d time.Duration) (err error)
	DUT() (err error)
	TS() (err error)
	GetCurrent() (value int, err error)
	StartCurrentRecord(samples int, interval time.Duration) (err error)
	StopCurrentRecord() (err error)
	GetCurrentRecord() (samples []int, err error)
	HDMI(on bool) (err error)
	SetDyper(dyper Dyper, on bool) (err error)
}

// AdminInterface contains methods intended to be used by administrators only.
type AdminInterface interface {
	SetLED(led LED, r, g, b uint8) (err error)
	ClearDisplay() (err error)
	PrintText(x, y uint, color Color, text string) (err error)
}

// Interface contains all methods of muxpictl.
type Interface interface {
	UserInterface
	AdminInterface
}

// InterfaceCloser is Interface expanded by Close method.
type InterfaceCloser interface {
	Interface
	Close() error
}

// NewMuxPiCtl prepares MuxPiCtl structure with serial configuration.
func NewMuxPiCtl(ttyPath string, baudrate int) *MuxPiCtl {
	return &MuxPiCtl{
		config: &serial.Config{
			Name:     ttyPath,
			Baud:     baudrate,
			Size:     8,
			Parity:   serial.ParityNone,
			StopBits: serial.Stop1,
		},
		mux:       new(sync.Mutex),
		sampleMux: new(sync.Mutex),
	}
}

// GetDefaultMuxPiCtl provides InterfaceCloser to MuxPiCtl with default values. The caller should
// call Close() to free the underlying serial connection. The returned instance is different for
// each call. Care should be taken to not use two such objects concurrently as they use the same
// device.
func GetDefaultMuxPiCtl() (InterfaceCloser, error) {
	mpc := NewMuxPiCtl("/dev/ttyS2", 115200)
	err := mpc.Open()
	if err != nil {
		return nil, err
	}
	return mpc, err
}

// Open starts a serial connection.
//
// It should be called only once after structure creation
// or in case the connection has been terminated with Close().
func (mpc *MuxPiCtl) Open() (err error) {
	mpc.port, err = serial.OpenPort(mpc.config)
	if err != nil {
		return err
	}
	mpc.reader = bufio.NewReader(mpc.port)
	return mpc.noEcho()
}

// Close terminates the serial connection.
//
// It should be called only once after the connection has been created with Open().
func (mpc *MuxPiCtl) Close() error {
	return mpc.port.Close()
}

// readResponse reads a single line from the reader.
//
// It should not be used by public functions unless they are aware of the locking.
func (mpc *MuxPiCtl) readResponse() (string, error) {
	response, _, err := mpc.reader.ReadLine()
	if err != nil {
		return "", fmt.Errorf("failed to read a response: %s", err)
	}
	return string(response), nil
}

// sendAndReceive writes cmd, optionally reads a response if withResponse is set to true,
// and checks for confirmation of successful execution.
func (mpc *MuxPiCtl) sendAndReceive(cmd string, withResponse bool) (response string, err error) {
	mpc.mux.Lock()
	defer mpc.mux.Unlock()
	_, err = io.WriteString(mpc.port, cmd+"\n")
	if err != nil {
		return "", fmt.Errorf("failed to write a command: %s", err)
	}
	if withResponse {
		response, err = mpc.readResponse()
		if err != nil {
			return "", err
		}
	}
	err = mpc.checkOK()
	if err != nil {
		return "", err
	}
	return response, nil
}

// checkOK reads a line from the buffer and rises an error
// if it is not an expected confirmation response.
//
// It should not be used by public functions unless they are aware of the locking.
func (mpc *MuxPiCtl) checkOK() error {
	resp, err := mpc.readResponse()
	if err != nil {
		return err
	}
	if resp != respOK {
		return fmt.Errorf("unexpected response: %s", resp)
	}
	return nil
}

// executeCommand sends a prepared cmd string and checks for OK response.
func (mpc *MuxPiCtl) executeCommand(cmd string) (err error) {
	_, err = mpc.sendAndReceive(cmd, false)
	return
}

// noEcho requires special handling as there are more possible responses.
func (mpc *MuxPiCtl) noEcho() (err error) {
	mpc.mux.Lock()
	defer mpc.mux.Unlock()
	_, err = io.WriteString(mpc.port, "echo off\n")
	if err != nil {
		return fmt.Errorf("failed to write a command: %s", err)
	}
	for i := 0; i < retryLimit; i++ {
		resp, err := mpc.readResponse()
		if err != nil {
			return err
		}
		if resp == "echo off" || strings.Contains(resp, "Echo is off now") {
			continue
		}
		if resp == respOK {
			return nil
		}
		return fmt.Errorf("unexpected response: %s", resp)
	}
	return fmt.Errorf("retry limit exceeded")
}

// PowerTick cuts power off DUT, waits specified time and switches power back on.
func (mpc *MuxPiCtl) PowerTick(d time.Duration) error {
	return mpc.executeCommand(fmt.Sprintf("power tick %d", int(d/time.Millisecond)))
}

// SetLED sets color of an RGB LED.
func (mpc *MuxPiCtl) SetLED(led LED, r, g, b uint8) error {
	return mpc.executeCommand(fmt.Sprintf("led %s %d %d %d", led, r, g, b))
}

// ClearDisplay clears the OLED display.
func (mpc *MuxPiCtl) ClearDisplay() error {
	return mpc.executeCommand("clr")
}

// PrintText prints text at x,y position (from top-left corner) in color.
func (mpc *MuxPiCtl) PrintText(x, y uint, color Color, text string) error {
	return mpc.executeCommand(fmt.Sprintf("text %d %d %s %s", x, y, color, text))
}

// DUT instructs uC to connect microSD card and power to a DUT (Device Under Test).
func (mpc *MuxPiCtl) DUT() error {
	return mpc.executeCommand("dut")
}

// TS instructs uC to connect microSD card to TS (test server)
// and disconnect power source from a DUT.
func (mpc *MuxPiCtl) TS() error {
	return mpc.executeCommand("ts")
}

// GetCurrent reads value of current drawn by DUT.
// The value is in milliamperes [mA].
func (mpc *MuxPiCtl) GetCurrent() (int, error) {
	str, err := mpc.sendAndReceive("current", true)
	if err != nil {
		return 0, err
	}
	i, err := strconv.Atoi(str)
	if err != nil {
		return 0, err
	}
	return i, nil
}

// sampleGetCurrent is a helper function of sampleGetCurrentLoop.
func (mpc *MuxPiCtl) sampleGetCurrent(stop <-chan struct{}) bool {
	mpc.sampleMux.Lock()
	defer mpc.sampleMux.Unlock()
	select {
	case <-stop:
		// A tick from ticker has been read before entering
		// the critical section, but the goroutine was requested
		// to stop (when waiting on mutex).
		//
		// It prevents from appending to the new sample when
		// the sample recorder is replaced.
		return false
	default:
	}

	v, err := mpc.GetCurrent()
	if err != nil {
		// replace failed reads with -1 so that successful reads will be spaced properly.
		v = -1
		// The error is ignored.
	}
	mpc.sample = append(mpc.sample, v)
	return len(mpc.sample) < cap(mpc.sample)
}

// sampleGetCurrentLoop reads from ticker and stop channels.
// It is stopped by closing a stop channel.
func (mpc *MuxPiCtl) sampleGetCurrentLoop(stop <-chan struct{}, ticker *time.Ticker) {
	for process := true; process; process = mpc.sampleGetCurrent(stop) {
		select {
		case <-stop:
			// sampleTicker has been stopped (before a tick occurred)
			// and this goroutine should terminate.
			return
		case <-ticker.C:
		}
	}
}

// stopCurrentRecord stops the sampleGetCurrentLoop. The caller should own sampleMux.
// It is a helper function of StartCurrentRecord and StopCurrentRecord.
func (mpc *MuxPiCtl) stopCurrentRecord() {
	if mpc.sampleTicker == nil {
		return
	}
	mpc.sampleTicker.Stop()
	close(mpc.sampleStop)
	mpc.sampleTicker = nil
}

// StartCurrentRecord starts a goroutine that periodically calls GetCurrent and saves the returned
// value. User who wants more samples should periodically call GetCurrent() instead.
func (mpc *MuxPiCtl) StartCurrentRecord(samples int, interval time.Duration) (err error) {
	if samples > sampleSizeLimit {
		return fmt.Errorf("requested sample size is too big")
	}
	period := interval / time.Duration(samples) // integer or floating point operations?
	if period < samplePeriodLimit {
		return fmt.Errorf("requested period time is too small: %v", period)
	}

	mpc.sampleMux.Lock()
	defer mpc.sampleMux.Unlock()

	// Check if there is already sample recording in progress.
	mpc.stopCurrentRecord()

	mpc.sample = make([]int, 0, samples)
	mpc.sampleTicker = time.NewTicker(period)
	mpc.sampleStop = make(chan struct{}, 1)

	go mpc.sampleGetCurrentLoop(mpc.sampleStop, mpc.sampleTicker)

	return nil
}

// StopCurrentRecord stops the goroutine that records the sample.
func (mpc *MuxPiCtl) StopCurrentRecord() (err error) {
	mpc.sampleMux.Lock()
	defer mpc.sampleMux.Unlock()

	mpc.stopCurrentRecord()
	return nil
}

// GetCurrentRecord returns all samples of GetCurrent made.
// It may be called before StopCurrentRecord.
func (mpc *MuxPiCtl) GetCurrentRecord() (samples []int, err error) {
	mpc.sampleMux.Lock()
	defer mpc.sampleMux.Unlock()

	if mpc.sample == nil {
		return nil, fmt.Errorf("no sample was recorded")
	}
	return mpc.sample, nil
}

func appendSwitch(org string, on bool) string {
	if on {
		return org + " on"
	}
	return org + " off"
}

// HDMI sets (or unsets) HDMI HOTPLUG pin.
func (mpc *MuxPiCtl) HDMI(on bool) (err error) {
	return mpc.executeCommand(appendSwitch("hdmi", on))
}

// SetDyper switches dyper, specified by 1st argument, on or off depending on 2nd argument.
func (mpc *MuxPiCtl) SetDyper(dyper Dyper, on bool) (err error) {
	switch dyper {
	case DYPER1, DYPER2:
		return mpc.executeCommand(appendSwitch(string(dyper), on))
	}
	return fmt.Errorf("invalid dyper value: %v", dyper)
}
