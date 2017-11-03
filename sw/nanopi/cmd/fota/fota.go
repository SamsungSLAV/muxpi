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
	"encoding/json"
	"flag"
	"log"
	"os"

	"git.tizen.org/tools/muxpi/sw/nanopi/fota"
)

var (
	sdcard  string
	mapping string
	md5sums string
	quiet   bool
)

func setFlags() {
	flag.StringVar(&sdcard, "card", "", "path to SDcard")
	// TODO: if map is not present it can generate an example.
	flag.StringVar(&mapping, "map", "", "path to JSON formatted mapping")
	flag.StringVar(&md5sums, "md5", "", "URL to MD5SUMS file")
	flag.BoolVar(&quiet, "q", false, "suppress logging")
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

	flasher, err := fota.NewFOTA(flag.Args(), md5sums, sdcard, partMapping)
	checkErr("failed to initialize FOTA: ", err)
	defer flasher.Close()
	if !quiet {
		flasher.SetVerbose()
	}
	verbose("FOTA initialized")

	checkErr("SDcard not found: ", fota.WaitForSDcard(sdcard, 10))
	verbose("SDcard detected")
	checkErr("failed to flash images: ", flasher.DownloadAndFlash())
}
