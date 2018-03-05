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

package main

import (
	"flag"
	"fmt"
	"log"
	"time"

	"git.tizen.org/tools/muxpi/sw/nanopi/stm"
)

type command interface {
	setFlags()
	run(dev stm.Interface)
}

type multiplexer struct {
	ts, dut bool
}

func (m *multiplexer) setFlags() {
	flag.BoolVar(&m.ts, "ts", false, "connect SD card to test server")
	flag.BoolVar(&m.dut, "dut", false, "connect SD card to DUT")
}

func (m *multiplexer) run(dev stm.Interface) {
	switch {
	// Only one is allowed at a time.
	case m.ts && m.dut:
		log.Fatal("conflicting flags: DUT and TS")
	case m.ts:
		checkErr("failed to switch to TS: ", dev.TS())
	case m.dut:
		checkErr("failed to switch to DUT: ", dev.DUT())
	}
}

type cutter struct {
	tick         bool
	tickDuration time.Duration
}

func (c *cutter) setFlags() {
	flag.BoolVar(&c.tick, "tick", false,
		"power off DUT, wait duration specified by 'm' and switch it on again")
	flag.DurationVar(&c.tickDuration, "m", time.Second, "time delay for tick command")
}

func (c *cutter) run(dev stm.Interface) {
	if c.tick {
		checkErr("failed to tick the power supply: ", dev.PowerTick(c.tickDuration))
	}
}

type current struct {
	cur bool
}

func (c *current) setFlags() {
	flag.BoolVar(&c.cur, "cur", false, "get reading of the current drawn by DUT")
}
func (c *current) run(dev stm.Interface) {
	if c.cur {
		i, err := dev.GetCurrent()
		checkErr("failed to read the power consumption: ", err)
		fmt.Println(i)
	}
}

type display struct {
	clr  bool
	text string
	x, y uint
}

func (d *display) setFlags() {
	flag.BoolVar(&d.clr, "clr", false, "clear the display")
	flag.StringVar(&d.text, "print", "", "print text on the display")
	flag.UintVar(&d.x, "print-x", 0, "x coordinate for print command")
	flag.UintVar(&d.y, "print-y", 0, "y coordinate for print command")
}

func (d *display) run(dev stm.Interface) {
	if d.clr {
		checkErr("failed to clear the display: ", dev.ClearDisplay())
	}
	if d.text != "" {
		checkErr("failed to print on the display: ", dev.PrintText(d.x, d.y, stm.Foreground, d.text))
	}
}

type leds struct {
	led1, led2 string
}

func (l *leds) setFlags() {
	flag.StringVar(&l.led1, "led1", "",
		"set the color of led1; accepted format 'r,g,b' where each is value in 0-255 range")
	flag.StringVar(&l.led2, "led2", "",
		"set the color of led2; accepted format 'r,g,b' where each is value in 0-255 range")
}

func (l *leds) setLED(dev stm.Interface, led string, stmLED stm.LED) {
	var r, g, b uint8
	_, err := fmt.Sscanf(led, "%d,%d,%d", &r, &g, &b)
	checkErr("failed to parse the led argument: ", err)
	checkErr("failed to update value for led: ", dev.SetLED(stmLED, r, g, b))
}

func (l *leds) run(dev stm.Interface) {
	if l.led1 != "" {
		l.setLED(dev, l.led1, stm.LED1)
	}
	if l.led2 != "" {
		l.setLED(dev, l.led2, stm.LED2)
	}
}
