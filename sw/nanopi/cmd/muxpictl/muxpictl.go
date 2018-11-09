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
	"flag"
	"log"
	"net/rpc"

	"github.com/SamsungSLAV/muxpi/sw/nanopi/muxpictl"
)

var (
	userServiceSocket string
	serviceSocket     string
	serve             bool
	remote            string
	dummy             bool
)

func setGlobalFlags() {
	flag.StringVar(&userServiceSocket, "user-listen", "/run/muxpictl-user.socket", "path to socket on which user RPC interface will be served")
	flag.StringVar(&serviceSocket, "listen", "/run/muxpictl.socket", "path to socket on which user and admin RPC interface will be served")
	flag.BoolVar(&serve, "serve", false, "start RPC service")
	flag.StringVar(&remote, "remote", "", "path to socket to use as a RPC service instead of local connection")
	flag.BoolVar(&dummy, "dummy", false, "log actions instead of performing them")
}

func checkErr(ctx string, err error) {
	if err != nil {
		log.Fatal(ctx, err)
	}
}

func main() {
	allCommands := []command{
		new(multiplexer),
		new(cutter),
		new(current),
		new(display),
		new(leds),
		new(switches),
	}
	for _, cmd := range allCommands {
		cmd.setFlags()
	}
	setGlobalFlags()
	flag.Parse()

	if (remote != "") && serve {
		log.Fatal("conflicting flags: serve and remote")
	}

	if (remote != "") && dummy {
		log.Fatal("conflicting flags: dummy and remote")
	}

	var dev muxpictl.InterfaceCloser
	if dummy {
		dev = muxpictl.NewDummy("muxpictl")
	} else if remote != "" {
		cl, err := rpc.Dial("unix", remote)
		checkErr("failed to connect to RPC service: ", err)

		dev = muxpictl.NewInterfaceClient(cl)
	} else {
		var err error
		dev, err = muxpictl.GetDefaultSTM()
		checkErr("failed to connect to STM: ", err)
	}
	defer dev.Close()

	if serve {
		serveRemoteSTM(dev)
		return
	}

	for _, cmd := range allCommands {
		cmd.run(dev)
	}
}
