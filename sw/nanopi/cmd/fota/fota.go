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

package main

import (
	"encoding/json"
	"flag"
	"log"
	"net/rpc"
	"os"

	"github.com/SamsungSLAV/muxpi/sw/nanopi/fota"
	"github.com/SamsungSLAV/muxpi/sw/nanopi/muxpictl"
)

var (
	sdcard  string
	mapping string
	md5sums string
	quiet   bool

	remote string
)

func setFlags() {
	flag.StringVar(&sdcard, "card", "", "path to SDcard")
	// TODO: if map is not present it can generate an example.
	flag.StringVar(&mapping, "map", "", "path to JSON formatted mapping")
	flag.StringVar(&md5sums, "md5", "", "URL or path to MD5SUMS file")
	flag.BoolVar(&quiet, "q", false, "suppress logging")

	flag.StringVar(&remote, "remote", "/run/muxpictl-user.socket", "path to remote service socket")
}

func checkErr(ctx string, err error) {
	if err != nil {
		log.Fatal(ctx, err)
	}
}

func verbose(str string) {
	if !quiet {
		log.Println(str)
	}
}

func main() {
	setFlags()
	flag.Parse()

	if mapping == "" {
		log.Fatal("missing mapping argument")
	}
	if sdcard == "" {
		log.Fatal("missing sdcard argument")
	}

	f, err := os.Open(mapping)
	checkErr("failed to open the mapping: ", err)
	defer f.Close()

	partMapping := make(map[string]string)
	decoder := json.NewDecoder(f)
	checkErr("failed to decode the mapping: ", decoder.Decode(&partMapping))

	var dev muxpictl.InterfaceCloser
	if remote != "" {
		cl, err := rpc.Dial("unix", remote)
		checkErr("failed to connect to RPC service: ", err)
		dev = muxpictl.NewInterfaceClient(cl)
	} else {
		dev, err = muxpictl.GetDefaultMuxPiCtl()
		checkErr("failed to connect to muxpictl: ", err)
	}
	defer dev.Close()

	flasher := fota.NewFOTA(dev, sdcard, partMapping)
	if !quiet {
		flasher.SetVerbose()
	}
	verbose("FOTA initialized")

	checkErr("SDcard not found: ", fota.WaitForSDcard(dev, sdcard, 10))
	verbose("SDcard detected")

	args := flag.Args()
	if len(args) == 0 {
		verbose("nothing to do")
		return
	}
	if _, err = os.Stat(args[0]); err != nil {
		err = flasher.DownloadAndFlash(md5sums, flag.Args()...)
	} else {
		err = flasher.Flash(md5sums, flag.Args()...)
	}
	checkErr("failed to flash images: ", err)

}
