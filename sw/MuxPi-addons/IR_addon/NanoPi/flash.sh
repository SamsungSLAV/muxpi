#!/bin/sh

./avrdude avrdude -q -V -p atmega328p -D -c arduino -C avrdude.conf -b 57600 -P /dev/ttyUSB0 -U flash:w:Mir.hex:i
