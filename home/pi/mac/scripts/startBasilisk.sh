#!/bin/bash

# Make sure control + c results in a nice clean terminal
clear

# Get audio online
sudo modprobe snd-pcm-oss

# Crank it up
~/mac/scripts/beLoud.sh > /dev/null 2>&1 &

# BONG!
aplay ~/mac/sounds/chime.wav > /dev/null 2>&1 &

# Start emulator
BasiliskII > /dev/null

# Make login prompt disappear before shutdown
clear

# And we're done!
shutdown now

