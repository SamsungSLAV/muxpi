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

package stm_test

import (
	"time"

	. "git.tizen.org/tools/muxpi/stm"

	. "github.com/onsi/ginkgo"
	. "github.com/onsi/gomega"
)

var _ = Describe("Stm", func() {
	BeforeEach(func() {
		err := Open()
		Expect(err).ToNot(HaveOccurred())
	})

	AfterEach(func() {
		err := Close()
		Expect(err).ToNot(HaveOccurred())
	})

	It("should switch to DUT", func() {
		err := DUT()
		Expect(err).ToNot(HaveOccurred())
	})

	It("should do power tick", func() {
		err := PowerTick(time.Second)
		Expect(err).ToNot(HaveOccurred())
	})

	It("should switch to TS", func() {
		err := TS()
		Expect(err).ToNot(HaveOccurred())
	})

	It("should clear the display", func() {
		err := ClearDisplay()
		Expect(err).ToNot(HaveOccurred())
	})

	It("should print text on the display", func() {
		err := PrintText(0, 0, Foreground, "test text")
		Expect(err).ToNot(HaveOccurred())
		time.Sleep(2 * time.Second)
		err = PrintText(0, 0, Background, "test text")
		Expect(err).ToNot(HaveOccurred())
	})

	It("should blink the left LED", func() {
		err := SetLED(LED1, 255, 255, 255)
		Expect(err).ToNot(HaveOccurred())
		time.Sleep(2 * time.Second)
		err = SetLED(LED1, 0, 0, 0)
		Expect(err).ToNot(HaveOccurred())
	})

	It("should blink the right LED", func() {
		err := SetLED(LED2, 255, 255, 255)
		Expect(err).ToNot(HaveOccurred())
		time.Sleep(2 * time.Second)
		err = SetLED(LED2, 0, 0, 0)
		Expect(err).ToNot(HaveOccurred())
	})
})
