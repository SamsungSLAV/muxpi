#!/bin/sh


# Verify if MIR is /dev/ttyUSB0 if not change this line
dev=/dev/ttyUSB0

stty -F $dev 57600

# Pendrive was prepared with one movie recorded to it.
echo "MIR DEMO PLAY MOVIE FROM EXTERNAL STORAGE"

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
# Turn the TV on and wait
send $key_power 15 "PWR"
# Choose movie source
send $source 6 "SRC"
send $key_right 6 "R"
# Play video
send $key_enter 5 "ENTER"
send $key_enter 5 "ENTER"
