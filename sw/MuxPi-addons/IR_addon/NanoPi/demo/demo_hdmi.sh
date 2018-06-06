#!/bin/sh

. ./demo_common.sh

echo "MIR DEMO PRESENTATION - CHOOSING SIGNAL SOURCE"

# Turn on TV
echo "Turn the TV on"
send $key_power 15 "POWER"

echo "Choose HDMI source"
send $key_cyclewindows  10  "SOURCE"
send $key_right 6 "RIGHT"
send $key_enter 6 "ENTER"
