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

// Package stm implements communication with STM32F030 found on MuxPi.
package stm

//go:generate go-rpcgen --source=stm.go --type=UserInterface --service Interface --target=rpc_user.go
//go:generate go-rpcgen --source=stm.go --type=Interface --target=rpc_admin.go

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

// Color denotes a string representation of a color accepted by STM.
//
// MuxPi has only two colors available: orange (foreground), black (background).
type Color string

const (
	// Foreground is displayed as orange, usually (255, 128, 0) in RGB notation.
	Foreground Color = "on"
	// Background is black, no pixels are lighted.
	Background Color = "off"
)

// LED represents all LEDs available via STM.
type LED string

const (
	// LED1 is an RGB LED located in the bottom-left corner of MuxPi.
	LED1 LED = "1"
	// LED2 is an RGB LED located on the right of the OLED display.
	LED2 LED = "2"
)

// Dyper represents all DYPERs available via STM.
type Dyper string

const (
	// DYPER1 is Dyper controlling the left column of pins.
	DYPER1 Dyper = "dyper 1"
	// DYPER2 is Dyper controlling the right column of pins.
	DYPER2 Dyper = "dyper 2"
)

// STM provides methods to execute commands via serial interface.
//
// It is safe for concurrent use.
type STM struct {
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

// UserInterface contains methods of STM that are intended to
// be used by a regular user and admin.
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
	SetLthorId(state string) (err error)
	SetLthorSwitch(state string) (err error)
	SetLthorVbus(on bool) (err error)
}

// AdminInterface contains methods of STM that are intended to
// be used by administrators only.
type AdminInterface interface {
	SetLED(led LED, r, g, b uint8) (err error)
	ClearDisplay() (err error)
	PrintText(x, y uint, color Color, text string) (err error)
}

// Interface contains all methods of STM.
type Interface interface {
	UserInterface
	AdminInterface
}

// InterfaceCloser is Interface expanded by Close method.
type InterfaceCloser interface {
	Interface
	Close() error
}

// NewSTM prepares STM structure with serial configuration.
func NewSTM(ttyPath string, baudrate int) *STM {
	return &STM{
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

// GetDefaultSTM provides InterfaceCloser to STM with default values. The caller should call Close()
// to free the underlying serial connection. The returned instance is different for each call. Care
// should be taken to not use two such objects concurrently as they use the same device.
func GetDefaultSTM() (InterfaceCloser, error) {
	stm := NewSTM("/dev/ttyS2", 115200)
	err := stm.Open()
	if err != nil {
		return nil, err
	}
	return stm, err
}

// Open starts a serial connection.
//
// It should be called only once after structure creation
// or in case the connection has been terminated with Close().
func (stm *STM) Open() (err error) {
	stm.port, err = serial.OpenPort(stm.config)
	if err != nil {
		return err
	}
	stm.reader = bufio.NewReader(stm.port)
	return stm.noEcho()
}

// Close terminates the serial connection.
//
// It should be called only once after the connection has been created with Open().
func (stm *STM) Close() error {
	return stm.port.Close()
}

// readResponse reads a single line from the reader.
//
// It should not be used by public functions unless they are aware of the locking.
func (stm *STM) readResponse() (string, error) {
	response, _, err := stm.reader.ReadLine()
	if err != nil {
		return "", fmt.Errorf("failed to read a response: %s", err)
	}
	return string(response), nil
}

// sendAndReceive writes cmd, optionally reads a response if withResponse is set to true,
// and checks for confirmation of successful execution.
func (stm *STM) sendAndReceive(cmd string, withResponse bool) (response string, err error) {
	stm.mux.Lock()
	defer stm.mux.Unlock()
	_, err = io.WriteString(stm.port, cmd+"\n")
	if err != nil {
		return "", fmt.Errorf("failed to write a command: %s", err)
	}
	if withResponse {
		response, err = stm.readResponse()
		if err != nil {
			return "", err
		}
	}
	err = stm.checkOK()
	if err != nil {
		return "", err
	}
	return response, nil
}

// checkOK reads a line from the buffer and rises an error
// if it is not an expected confirmation response.
//
// It should not be used by public functions unless they are aware of the locking.
func (stm *STM) checkOK() error {
	resp, err := stm.readResponse()
	if err != nil {
		return err
	}
	if resp != respOK {
		return fmt.Errorf("unexpected response: %s", resp)
	}
	return nil
}

// executeCommand sends a prepared cmd string and checks for OK response.
func (stm *STM) executeCommand(cmd string) (err error) {
	_, err = stm.sendAndReceive(cmd, false)
	return
}

// noEcho requires special handling as there are more possible responses.
func (stm *STM) noEcho() (err error) {
	stm.mux.Lock()
	defer stm.mux.Unlock()
	_, err = io.WriteString(stm.port, "echo off\n")
	if err != nil {
		return fmt.Errorf("failed to write a command: %s", err)
	}
	for i := 0; i < retryLimit; i++ {
		resp, err := stm.readResponse()
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
func (stm *STM) PowerTick(d time.Duration) error {
	return stm.executeCommand(fmt.Sprintf("power tick %d", int(d/time.Millisecond)))
}

// SetLED sets color of an RGB LED.
func (stm *STM) SetLED(led LED, r, g, b uint8) error {
	return stm.executeCommand(fmt.Sprintf("led %s %d %d %d", led, r, g, b))
}

// ClearDisplay clears the OLED display.
func (stm *STM) ClearDisplay() error {
	return stm.executeCommand("clr")
}

// PrintText prints text at x,y position (from top-left corner) in color.
func (stm *STM) PrintText(x, y uint, color Color, text string) error {
	return stm.executeCommand(fmt.Sprintf("text %d %d %s %s", x, y, color, text))
}

// DUT instructs STM to connect microSD card and power to a DUT (Device Under Test).
func (stm *STM) DUT() error {
	return stm.executeCommand("dut")
}

// TS instructs STM to connect microSD card to TS (test server)
// and disconnect power source from a DUT.
func (stm *STM) TS() error {
	return stm.executeCommand("ts")
}

// GetCurrent reads value of current drawn by DUT.
// The value is in milliamperes [mA].
func (stm *STM) GetCurrent() (int, error) {
	str, err := stm.sendAndReceive("current", true)
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
func (stm *STM) sampleGetCurrent(stop <-chan struct{}) bool {
	stm.sampleMux.Lock()
	defer stm.sampleMux.Unlock()
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

	v, err := stm.GetCurrent()
	if err != nil {
		// replace failed reads with -1 so that successful reads will be spaced properly.
		v = -1
		// The error is ignored.
	}
	stm.sample = append(stm.sample, v)
	return len(stm.sample) < cap(stm.sample)
}

// sampleGetCurrentLoop reads from ticker and stop channels.
// It is stopped by closing a stop channel.
func (stm *STM) sampleGetCurrentLoop(stop <-chan struct{}, ticker *time.Ticker) {
	for process := true; process; process = stm.sampleGetCurrent(stop) {
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
func (stm *STM) stopCurrentRecord() {
	if stm.sampleTicker == nil {
		return
	}
	stm.sampleTicker.Stop()
	close(stm.sampleStop)
	stm.sampleTicker = nil
}

// StartCurrentRecord starts a goroutine that periodically calls GetCurrent and saves the returned
// value. User who wants more samples should periodically call GetCurrent() instead.
func (stm *STM) StartCurrentRecord(samples int, interval time.Duration) (err error) {
	if samples > sampleSizeLimit {
		return fmt.Errorf("requested sample size is too big")
	}
	period := interval / time.Duration(samples) // integer or floating point operations?
	if period < samplePeriodLimit {
		return fmt.Errorf("requested period time is too small: %v", period)
	}

	stm.sampleMux.Lock()
	defer stm.sampleMux.Unlock()

	// Check if there is already sample recording in progress.
	stm.stopCurrentRecord()

	stm.sample = make([]int, 0, samples)
	stm.sampleTicker = time.NewTicker(period)
	stm.sampleStop = make(chan struct{}, 1)

	go stm.sampleGetCurrentLoop(stm.sampleStop, stm.sampleTicker)

	return nil
}

// StopCurrentRecord stops the goroutine that records the sample.
func (stm *STM) StopCurrentRecord() (err error) {
	stm.sampleMux.Lock()
	defer stm.sampleMux.Unlock()

	stm.stopCurrentRecord()
	return nil
}

// GetCurrentRecord returns all samples of GetCurrent made.
// It may be called before StopCurrentRecord.
func (stm *STM) GetCurrentRecord() (samples []int, err error) {
	stm.sampleMux.Lock()
	defer stm.sampleMux.Unlock()

	if stm.sample == nil {
		return nil, fmt.Errorf("no sample was recorded")
	}
	return stm.sample, nil
}

func appendSwitch(org string, on bool) string {
	if on {
		return org + " on"
	}
	return org + " off"
}

// HDMI sets (or unsets) HDMI HOTPLUG pin.
func (stm *STM) HDMI(on bool) (err error) {
	return stm.executeCommand(appendSwitch("hdmi", on))
}

// SetDyper switches dyper, specified by 1st argument, on or off depending on 2nd argument.
func (stm *STM) SetDyper(dyper Dyper, on bool) (err error) {
	switch dyper {
	case DYPER1, DYPER2:
		return stm.executeCommand(appendSwitch(string(dyper), on))
	}
	return fmt.Errorf("invalid dyper value: %v", dyper)
}

// SetLthorId switches ID to USB or UART.
func (stm *STM) SetLthorId(state string) (err error) {
	return stm.executeCommand("lthor id " + state)
}

// SetLthorSwitch changes switch to USB or UART.
func (stm *STM) SetLthorSwitch(state string) (err error) {
	return stm.executeCommand("lthor switch " + state)
}

// SetLthorSwitch enabled (or disables) VBUS.
func (stm *STM) SetLthorVbus(on bool) (err error) {
	return stm.executeCommand(appendSwitch("lthor vbus", on))
}
