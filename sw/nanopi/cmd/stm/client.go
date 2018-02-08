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
