#!/bin/sh

. ./demo_common.sh

echo "MIR DEMO - DEEP SLEEP'"


# Turn the TV on
echo "Turn the TV on"
send $key_power 10 POWER

# Turn the TV off
echo "Turn the TV off - wait for deep sleep"
send $key_power 45 POWER

echo "Turn the TV on after deep sleep occured"
send $key_power 1 POWER
