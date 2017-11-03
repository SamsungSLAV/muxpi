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

package main

import (
	"flag"
	"log"
	"time"

	"git.tizen.org/tools/muxpi/sw/nanopi/stm"
)

var (
	ts, dut, tick bool
	tickDuration  time.Duration
)

func setFlags() {
	flag.DurationVar(&tickDuration, "m", time.Second, "time delay for tick command")
	flag.BoolVar(&ts, "ts", false, "connect SD card to test server")
	flag.BoolVar(&dut, "dut", false, "connect SD card to DUT")
	flag.BoolVar(&tick, "tick", false, "power off the DUT, wait 'm' seconds and switch it on again")
}

func checkErr(ctx string, err error) {
	if err != nil {
		log.Fatal(ctx, err)
	}
}

func main() {
	setFlags()
	flag.Parse()

	checkErr("failed to open connection to STM:", stm.Open())
	defer stm.Close()

	// SD card multiplexer related actions.
	switch {
	// Only one is allowed at a time.
	case ts && dut:
		log.Fatal("conflicting flags: DUT and TS")
	case ts:
		checkErr("failed to switch to the test server: ", stm.TS())
	case dut:
		checkErr("failed to switch to the DUT: ", stm.DUT())
	}
	if tick {
		checkErr("failed to tick the power supply: ", stm.PowerTick(tickDuration))
	}
}
