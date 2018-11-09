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
	"log"
	"net"
	"net/rpc"
	"os"
	"os/signal"

	"github.com/SamsungSLAV/muxpi/sw/nanopi/muxpictl"
	"github.com/coreos/go-systemd/activation"
)

func registerUserServiceOnListener(impl muxpictl.UserInterface, l net.Listener) {
	srv := rpc.NewServer()
	checkErr("failed to register user service: ", muxpictl.RegisterUserInterfaceService(srv, impl))
	go srv.Accept(l)
}

func registerServiceOnListener(impl muxpictl.Interface, l net.Listener) {
	srv := rpc.NewServer()
	checkErr("failed to register admin service: ", muxpictl.RegisterInterfaceService(srv, impl))
	go srv.Accept(l)
}

func registerUserService(i muxpictl.UserInterface, path string) net.Listener {
	l, err := net.Listen("unix", path)
	if err != nil {
		log.Fatal("failed to bind a socket: ", err)
	}
	registerUserServiceOnListener(i, l)
	return l
}

func registerService(i muxpictl.Interface, path string) net.Listener {
	l, err := net.Listen("unix", path)
	if err != nil {
		log.Fatal("failed to bind a socket: ", err)
	}
	registerServiceOnListener(i, l)
	return l
}

func serveRemoteMuxpiCtl(dev muxpictl.Interface) {
	listeners, err := activation.Listeners()
	if err != nil {
		if userServiceSocket != "" {
			l := registerUserService(dev.(muxpictl.UserInterface), userServiceSocket)
			defer l.Close()
		}
		if serviceSocket != "" {
			l := registerService(dev, serviceSocket)
			defer l.Close()
		}
	} else if len(listeners) == 2 {
		for _, l := range listeners {
			name := l.Addr().String()
			switch {
			case serviceSocket != "" && name == serviceSocket:
				registerServiceOnListener(dev, l)
			case userServiceSocket != "" && name == userServiceSocket:
				registerUserServiceOnListener(dev.(muxpictl.UserInterface), l)
			default:
				log.Fatal("unknown fd name: ", name)
			}
			defer l.Close()
		}
	} else {
		log.Fatal("unexpected number of file descriptors passed: ", len(listeners))
	}

	// Wait for interrupt.
	c := make(chan os.Signal, 1)
	signal.Notify(c)
	<-c
}
