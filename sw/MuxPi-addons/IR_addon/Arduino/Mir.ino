/*
    Copyright (c) 2017 Samsung Electronics Co., Ltd All Rights Reserved

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License
*/

// MIR : MuxPi IR Addon
// This code is responsible for MIR's microcontroller work.
// MIR reads raw code from serial, and sends apropriate IR signal.
#include <IRremote.h>

IRsend irsend;

// Addon LED setup
const int RED = 13;
// Samsung TV remote carrier frequency
const int kHz = 38;
// Samsung TV remote raw data length
const size_t bufferSize = 67;

// sendCode executes IR data transmission.
// During transmission the red led is on to indicate data transfer.
void sendCode(unsigned int *code) {
  digitalWrite(RED, HIGH);
  irsend.sendRaw(code, bufferSize , kHz);
  digitalWrite(RED, LOW);

}

// processData prepares data and sends apropriate IR signal
//
// FIXME: sendSamsung() from IRremote library does not work properly,
// That is why this workaround is needed.
void processData(String raw) {
	// For debug purposes
	// Serial.print(raw);
	size_t index = 0;
  // Convert string to unsignet int array
  char *str = (char *)raw.c_str();
  unsigned int arr[bufferSize];
  // Split string
  char *p = strtok(str, ",");

  // Convert raw data (string) to unsigned int array.
  while (p != NULL && index < bufferSize) {
    arr[index++] = (unsigned int)atoi(p);
    p = strtok(NULL, ",");
  }
  // Send raw code
  sendCode(arr);
}


void setup() {
  //LEDs setup
  pinMode(RED, OUTPUT);

  // Serial setup
  Serial.begin(57600);
  Serial.flush();
}

void loop() {
  while (Serial.available() > 0) {
    processData(Serial.readString());
  }
}
