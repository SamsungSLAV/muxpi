/*
 *  Copyright (c) 2018 Samsung Electronics Co., Ltd All Rights Reserved
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

package muxpictl

import (
	"time"

	"github.com/SamsungSLAV/slav/logger"
)

// Dummy is a dummy implementation of Interface.
// It logs to the standard logger from "log" package.
type Dummy struct {
	ctx string
}

// NewDummy return a dummy implementation of Interface.
// Each message will be prefixed with context.
func NewDummy() InterfaceCloser {
	return &Dummy{ctx: ""}
}

// Close prints "Close" to the standard logger.
func (d *Dummy) Close() error {
	logger.Info("Close")
	return nil
}

// PowerTick prints "PowerTick" and duration argument to the standard logger.
func (d *Dummy) PowerTick(duration time.Duration) error {
	logger.Info("PowerTick", duration)
	return nil
}

// SetLED prints "SetLED" and arguments to the standard logger.
func (d *Dummy) SetLED(led LED, r, g, b uint8) error {
	logger.Info("SetLED", led, r, g, b)
	return nil
}

// ClearDisplay prints "ClearDisplay" to the standard logger.
func (d *Dummy) ClearDisplay() error {
	logger.Info("ClearDisplay")
	return nil
}

// PrintText prints "PrintText" and arguments to the standard logger.
func (d *Dummy) PrintText(x, y uint, color Color, text string) error {
	logger.Info("PrintText", x, y, color, text)
	return nil
}

// DUT prints "DUT" to the standard logger.
func (d *Dummy) DUT() error {
	logger.Info("DUT")
	return nil
}

// TS prints "TS" to the standard logger.
func (d *Dummy) TS() error {
	logger.Info("TS")
	return nil
}

// GetCurrent prints "GetCurrent" to the standard logger and returns 0.
func (d *Dummy) GetCurrent() (int, error) {
	logger.Info("GetCurrent")
	return 0, nil
}

// StartCurrentRecord prints "StartCurrentRecord" and arguments to the standard logger.
func (d *Dummy) StartCurrentRecord(samples int, interval time.Duration) error {
	logger.WithProperties(logger.Properties{"samples": samples, "interval": interval.String()}).
		Info("StartCurrentRecord")
	return nil
}

// StopCurrentRecord prints "StopCurrentRecord" to the standard logger.
func (d *Dummy) StopCurrentRecord() error {
	logger.Info("StopCurrentRecord")
	return nil
}

// GetCurrentRecord prints "GetCurrentRecord" to the standard logger and returns nil.
func (d *Dummy) GetCurrentRecord() ([]int, error) {
	logger.Info("GetCurrentRecord")
	return nil, nil
}

// HDMI prints "HDMI" and argument to the standard logger.
func (d *Dummy) HDMI(on bool) (err error) {
	logger.WithProperty("on", on).Info("HDMI")
	return nil
}

// SetDyper prints "SetDyper" and arguments to the standard logger.
func (d *Dummy) SetDyper(dyper Dyper, on bool) error {
	logger.WithProperties(logger.Properties{"dyper": dyper, "on": on}).Info("SetDyper", dyper, on)
	return nil
}
