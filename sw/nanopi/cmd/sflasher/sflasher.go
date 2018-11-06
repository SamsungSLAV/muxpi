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

// sflasher is a simple utility to flash SD cards.
package main

import (
	"encoding/json"
	"os"

	flag "github.com/spf13/pflag"

	"github.com/SamsungSLAV/muxpi/sw/nanopi/sflasher"
	"github.com/SamsungSLAV/slav/logger"
)

var (
	sdcard   string
	mapping  string
	md5sums  string
	logLevel string
)

func setFlags() {
	flag.StringVar(&sdcard, "card", "", "path to SDcard")
	flag.StringVar(&mapping, "map", "", "path to JSON formatted mapping")
	flag.StringVar(&md5sums, "md5", "", "URL or path to MD5SUMS file")
	flag.StringVarP(&logLevel, "log-level", "l", "error", `Level of logging.
	Levels:
	* emergency
	* alert
	* critical
	* error
	* warning
	* notice
	* info
	* debug`)
}

func setLogger() {
	logLvl, err := logger.StringToLevel(logLevel)
	exitOnErr("Invalid value of --log-level flag.", err)
	logger.SetThreshold(logLvl)
	logger.IncDepth(1).Infof("Logging level: %s", logLvl.String())
}

func exitOnErr(msg string, err error) {
	if err != nil {
		logger.IncDepth(1).WithError(err).Critical(msg)
		os.Exit(1)
	}
}

func exitWithMsgStatus(msg string, status int) {
	logger.IncDepth(1).Critical(msg)
	os.Exit(status)
}

func main() {
	setFlags()
	flag.Parse()
	setLogger()

	if mapping == "" {
		exitWithMsgStatus("Missing mapping argument. Example: "+exampleMap, 1)
	}
	if sdcard == "" {
		exitWithMsgStatus("Missing sdcard argument.", 1)
	}

	f, err := os.Open(mapping)
	exitOnErr("Failed to open the mapping.", err)
	defer f.Close()

	partMapping := make(map[string]string)
	decoder := json.NewDecoder(f)
	exitOnErr("Failed to decode the mapping.", decoder.Decode(&partMapping))

	flasher := sflasher.NewSflasher(sdcard, partMapping)
	if logger.Threshold() >= logger.InfoLevel {
		flasher.LogStats()
	}
	logger.Info("sflasher initialized")

	args := flag.Args()
	if len(args) == 0 {
		logger.Info("Nothing to do.")
		return
	}
	if _, err = os.Stat(args[0]); err != nil {
		err = flasher.DownloadAndFlash(md5sums, flag.Args()...)
	} else {
		err = flasher.Flash(md5sums, flag.Args()...)
	}
	exitOnErr("Failed to flash images.", err)

}

const exampleMap = `
{
	"boot.img": "1",
	"rootfs.img": "2",
	"system-data.img": "3",
	"user.img": "5",
	"modules.img": "6",
	"ramdisk.img": "7",
	"ramdisk-recovery.img": "8",
	"inform.img": "9",
}`
