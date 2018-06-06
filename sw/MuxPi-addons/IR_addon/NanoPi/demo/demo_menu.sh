#!/bin/sh

# Verify if MIR is /dev/ttyUSB0 if not change this line
dev=/dev/ttyUSB0

stty -F $dev 57600

echo "MIR DEMO EXAMPLE - VIEW 'ABOUT THIS TV'"

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
