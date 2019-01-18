#!/bin/sh

. ./exp_codes

# Verify if MIR is /dev/ttyUSB0 and if not change this line
dev=/dev/ttyUSB0
stty -F $dev 57600 -hupcl

# Send anything to MIR to turn of hardware flow control
# Look at -hupcl for details
# It needs to be done only once after -hupcl is used
echo $key_1 > $dev
sleep 2

# Send key
#   $1 - key
#   $3 - key name
#   $2 - sleep time
send() {
    echo "Sending" $3
    echo $1 > $dev
    sleep $2
}

