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

package muxpictl_test

import (
	"time"

	. "github.com/SamsungSLAV/muxpi/sw/nanopi/muxpictl"

	. "github.com/onsi/ginkgo"
	. "github.com/onsi/gomega"
)

var _ = Describe("Muxpictl", func() {
	var dev InterfaceCloser

	BeforeEach(func() {
		var err error
		dev, err = GetDefaultSTM()
		Expect(err).ToNot(HaveOccurred())
	})

	AfterEach(func() {
		err := dev.Close()
		Expect(err).ToNot(HaveOccurred())
	})

	It("should switch to DUT", func() {
		err := dev.DUT()
		Expect(err).ToNot(HaveOccurred())
	})

	It("should do power tick", func() {
		err := dev.PowerTick(time.Second)
		Expect(err).ToNot(HaveOccurred())
	})

	It("should switch to TS", func() {
		err := dev.TS()
		Expect(err).ToNot(HaveOccurred())
	})

	It("should clear the display", func() {
		err := dev.ClearDisplay()
		Expect(err).ToNot(HaveOccurred())
	})

	It("should print text on the display", func() {
		err := dev.PrintText(0, 0, Foreground, "test text")
		Expect(err).ToNot(HaveOccurred())
		time.Sleep(2 * time.Second)
		err = dev.PrintText(0, 0, Background, "test text")
		Expect(err).ToNot(HaveOccurred())
	})

	It("should blink the left LED", func() {
		err := dev.SetLED(LED1, 255, 255, 255)
		Expect(err).ToNot(HaveOccurred())
		time.Sleep(2 * time.Second)
		err = dev.SetLED(LED1, 0, 0, 0)
		Expect(err).ToNot(HaveOccurred())
	})

	It("should blink the right LED", func() {
		err := dev.SetLED(LED2, 255, 255, 255)
		Expect(err).ToNot(HaveOccurred())
		time.Sleep(2 * time.Second)
		err = dev.SetLED(LED2, 0, 0, 0)
		Expect(err).ToNot(HaveOccurred())
	})
})
