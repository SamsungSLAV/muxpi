/*
 *  Copyright (c) 2017 Samsung Electronics Co., Ltd All Rights Reserved
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

	"github.com/tarm/serial"
)

const (
	respOK     = "OK"
	retryLimit = 8
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
