#!/bin/sh

. ./demo_common.sh

echo "MIR DEMO EXAMPLE - VIEW 'ABOUT THIS TV'"

# Turn on TV
echo "Turn the TV on"
send $key_power 15 PWR

# # Demo key sequence
echo "Go to Menu to see TV info"
send $key_menu 5 "MENU"
send $key_down 2 "DOWN"
send $key_down 2 "DOWN"
send $key_down 2 "DOWN"
send $key_down 2 "DOWN"
send $key_right 2 "RIGHT"

send $key_down 2 "DOWN"
send $key_down 2 "DOWN"
send $key_down 2 "DOWN"
send $key_down 2 "DOWN"
send $key_enter 15 "ENTER"

# Turn off TV
echo "Turn the TV off"
send $key_power 5 PWR
