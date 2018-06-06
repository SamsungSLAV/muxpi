#!/bin/sh

. ./demo_common.sh

echo "MIR DEMO PRESENTATION - ENTERING FACTORY RESET"

# Turn on TV
echo "Turn the TV on"
#send $key_power 15 "POWER"

echo "Send factory reset key sequence"
send $key_info 3  "INFO"
send $key_vendor 0 "VENDOR"
