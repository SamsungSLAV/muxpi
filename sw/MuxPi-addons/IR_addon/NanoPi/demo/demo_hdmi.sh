#!/bin/sh

# Verify if MIR is /dev/ttyUSB0 if not change this line
dev=/dev/ttyUSB0

stty -F $dev 57600

echo "MIR DEMO PRESENTATION - CHOOSING SIGNAL SOURCE"

. ./exp_codes

# Send key
#   $1 - key
#   $3 - key name
#   $2 - sleep time
send() {
    echo "Sending" $3
    echo $1 > $dev
    sleep $2
}

# Turn on TV
echo "Turn the TV on"
send $key_power 15 "POWER"

echo "Choose HDMI source"
send $key_cyclewindows  10  "SOURCE"
send $key_right 6 "RIGHT"
send $key_enter 6 "ENTER"
