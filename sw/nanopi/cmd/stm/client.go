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
	"strings"
	"time"

	"github.com/SamsungSLAV/muxpi/sw/nanopi/stm"
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
	cur                                bool
	sampleStart, sampleStop, sampleGet bool
	sampleSize                         int
	sampleDuration                     time.Duration
}

func (c *current) setFlags() {
	flag.BoolVar(&c.cur, "cur", false, "get reading of the current drawn by DUT")
	flag.BoolVar(&c.sampleStart, "cur-start", false, "start sampling DUT current")
	flag.BoolVar(&c.sampleStop, "cur-stop", false, "stop sampling DUT current")
	flag.BoolVar(&c.sampleGet, "cur-get", false, "get CSV of sample recorded")
	flag.IntVar(&c.sampleSize, "cur-size", 120, "sample size")
	flag.DurationVar(&c.sampleDuration, "cur-duration", time.Minute, "duration the sample should be recorded for")
}

func (c *current) run(dev stm.Interface) {
	if c.cur {
		i, err := dev.GetCurrent()
		checkErr("failed to read the power consumption: ", err)
		fmt.Println(i)
	}

	// Nothing to do.
	if !(c.sampleStart || c.sampleStop || c.sampleGet) {
		return
	}
	// Impose restriction: remote flag must be used.
	if remote == "" {
		log.Fatal("sample recording functions can be used only with \"-remote\" flag set")
	}

	switch {
	// Only one is allowed at a time.
	case c.sampleStart && c.sampleStop:
		log.Fatal("conflicting flags: cur-start and cur-stop")
	case c.sampleStart:
		checkErr("failed to start sampling: ", dev.StartCurrentRecord(c.sampleSize, c.sampleDuration))
	case c.sampleStop:
		checkErr("failed to stop sampling: ", dev.StopCurrentRecord())
	}
	if c.sampleGet {
		sample, err := dev.GetCurrentRecord()
		checkErr("failed to get a sample: ", err)

		switch len(sample) {
		case 0:
		case 1:
			fmt.Printf("%d\n", sample[0])
		default:
			b := new(strings.Builder)
			// 3 to 4 digits and a comma are expected for each element of the sample.
			b.Grow(len(sample) * 4)
			fmt.Fprintf(b, "%d", sample[0])
			for _, s := range sample[1:] {
				fmt.Fprintf(b, ",%d", s)
			}
			fmt.Println(b)
		}
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

func getBoolState(name, state string) (bool, error) {
	switch state {
	case "on":
		return true, nil
	case "off":
		return false, nil
	}
	return false, fmt.Errorf("unexpected value provided to %s: %s", name, state)
}

type switches struct {
	dyper1State string
	dyper2State string
	hdmiState   string
}

func (s *switches) setFlags() {
	flag.StringVar(&s.dyper1State, "dyper1", "", "switch dyper1 to the given state (on|off)")
	flag.StringVar(&s.dyper2State, "dyper2", "", "switch dyper2 to the given state (on|off)")
	flag.StringVar(&s.hdmiState, "hdmi", "", "switch HDMI HOTPLUG pin (on|off)")
}

func (s *switches) setDyper(dev stm.Interface, dyper stm.Dyper, state string) {
	if state == "" {
		return
	}
	b, err := getBoolState("dyper", state)
	if err != nil {
		log.Println(err)
		return
	}
	dev.SetDyper(dyper, b)
}

func (s *switches) setHDMI(dev stm.Interface, state string) {
	if state == "" {
		return
	}
	b, err := getBoolState("hdmi", state)
	if err != nil {
		log.Println(err)
		return
	}
	dev.HDMI(b)
}

func (s *switches) run(dev stm.Interface) {
	s.setDyper(dev, stm.DYPER1, s.dyper1State)
	s.setDyper(dev, stm.DYPER2, s.dyper2State)

	s.setHDMI(dev, s.hdmiState)
}

func getUartUsbState(name, state string) (string, error) {
	switch state {
	case "uart":
		return state, nil
	case "usb":
		return state, nil
	}
	return "", fmt.Errorf("unexpected value provided to %s: %s", name, state)
}

type lthor struct {
	idState     string
	switchState string
	vbusState   string
}

func (l *lthor) setFlags() {
	flag.StringVar(&l.idState, "lthor-id", "", "change id to the given state (usb|uart)")
	flag.StringVar(&l.switchState, "lthor-switch", "", "change usb/uart switch to the given state (usb|uart)")
	flag.StringVar(&l.vbusState, "lthor-vbus", "", "enable/disable vbus voltage (on|off)")
}

func (l *lthor) setLthorId(dev stm.Interface, state string) {
	if state == "" {
		return
	}
	b, err := getUartUsbState("lthor-id", state)
	if err != nil {
		log.Println(err)
		return
	}
	dev.SetLthorId(b)
}

func (l *lthor) setLthorSwitch(dev stm.Interface, state string) {
	if state == "" {
		return
	}
	b, err := getUartUsbState("lthor-switch", state)
	if err != nil {
		log.Println(err)
		return
	}
	dev.SetLthorSwitch(b)
}

func (l *lthor) setLthorVbus(dev stm.Interface, state string) {
	if state == "" {
		return
	}
	b, err := getBoolState("lthor-vbus", state)
	if err != nil {
		log.Println(err)
		return
	}
	dev.SetLthorVbus(b)
}

func (l *lthor) run(dev stm.Interface) {
	l.setLthorId(dev, l.idState)
	l.setLthorSwitch(dev, l.switchState)
	l.setLthorVbus(dev, l.vbusState)
}
