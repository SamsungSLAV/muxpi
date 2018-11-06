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
	"net/rpc"
	"os"

	flag "github.com/spf13/pflag"

	"github.com/SamsungSLAV/muxpi/sw/nanopi/muxpictl"
	"github.com/SamsungSLAV/muxpi/sw/nanopi/sflasher"
	"github.com/SamsungSLAV/slav/logger"
)

var (
	sdcard   string
	mapping  string
	md5sums  string
	logLevel string

	remote string
)

func setFlags() {
	flag.StringVar(&sdcard, "card", "", "path to SDcard")
	// TODO: if map is not present it can generate an example.
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

	flag.StringVar(&remote, "remote", "/run/muxpictl-user.socket", "path to remote service socket")
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
		exitWithMsgStatus("Missing mapping argument.", 1)
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

	var dev muxpictl.InterfaceCloser
	if remote != "" {
		cl, err := rpc.Dial("unix", remote)
		exitOnErr("Failed to connect to RPC service.", err)
		dev = muxpictl.NewInterfaceClient(cl)
	} else {
		dev, err = muxpictl.GetDefaultMuxPiCtl()
		exitOnErr("Failed to connect to muxpictl.", err)
	}
	defer dev.Close()

	flasher := sflasher.NewSflasher(dev, sdcard, partMapping)
	logger.Info("sflasher initialized")

	if sflasher.WaitForSDcard(dev, sdcard, 10) == nil {
		exitWithMsgStatus("SDcard not found.", 1)
	}
	logger.Info("SDcard detected")

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
