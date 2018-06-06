#!/bin/sh

# Verify if MIR is /dev/ttyUSB0 if not change this line
dev=/dev/ttyUSB0
# Verify that target is /dev/ttyUSB1. If not - change this line
#target=/dev/ttyUSB1
stty -F $dev 57600

echo "MIR DEMO - DEEP SLEEP'"

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

# Turn the TV on
echo "Turn the TV on"
send $key_power 10 POWER

# Turn the TV off
echo "Turn the TV off - wait for deep sleep"
send $key_power 45 POWER

# TODO change it - expect or smth similar
# cat /dev/ttyUSB1 | grep "sleep" -i

echo "Turn the TV on after deep sleep occured"
send $key_power 10 POWER
