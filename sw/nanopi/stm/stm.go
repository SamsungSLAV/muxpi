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

import (
	"bufio"
	"fmt"
	"io"
	"strings"
	"sync"
	"time"

	"github.com/tarm/serial"
)

const (
	respOK     = "OK"
	retryLimit = 8
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

// STM provides methods to execute commands via serial interface.
//
// It is safe for concurrent use.
type STM struct {
	config *serial.Config
	port   *serial.Port
	reader *bufio.Reader
	mux    *sync.Mutex
}

var muxPi *STM

func init() {
	muxPi = NewSTM("/dev/ttyS2", 115200)
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
		mux: new(sync.Mutex),
	}
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

// executeCommand sends a prepared cmd string and checks the response.
func (stm *STM) executeCommand(cmd string) (err error) {
	stm.mux.Lock()
	defer stm.mux.Unlock()
	_, err = io.WriteString(stm.port, cmd+"\n")
	if err != nil {
		return fmt.Errorf("failed to write a command: %s", err)
	}
	return stm.checkOK()
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

// Open is a convenience function for default MuxPi settings.
func Open() error {
	return muxPi.Open()
}

// Close is a convenience function for default MuxPi settings.
func Close() error {
	return muxPi.Close()
}

// PowerTick is a convenience function for default MuxPi settings.
func PowerTick(d time.Duration) error {
	return muxPi.PowerTick(d)
}

// SetLED is a convenience function for default MuxPi settings.
func SetLED(led LED, r, g, b uint8) error {
	return muxPi.SetLED(led, r, g, b)
}

// ClearDisplay is a convenience function for default MuxPi settings.
func ClearDisplay() error {
	return muxPi.ClearDisplay()
}

// PrintText is a convenience function for default MuxPi settings.
func PrintText(x, y uint, color Color, text string) error {
	return muxPi.PrintText(x, y, color, text)
}

// DUT is a convenience function for default MuxPi settings.
func DUT() error {
	return muxPi.DUT()
}

// TS is a convenience function for default MuxPi settings.
func TS() error {
	return muxPi.TS()
}
