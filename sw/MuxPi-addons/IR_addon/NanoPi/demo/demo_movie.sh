#!/bin/sh

. ./demo_common.sh

echo "MIR DEMO PLAY MOVIE FROM EXTERNAL STORAGE"

# Turn the TV on and wait
send $key_power 15 "PWR"
# Choose movie source
send $key_cyclewindows 6 "SRC"
send $key_right 6 "R"
# Play video
send $key_enter 5 "ENTER"
send $key_enter 5 "ENTER"
