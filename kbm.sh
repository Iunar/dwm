#!/bin/bash

# Mouse
xinput set-prop 9 "libinput Accel Profile Enabled" 0 1 0 &
xinput set-prop 9 "libinput Accel Speed" -0.35 &

# Keyboard
setxkbmap -option caps:escape &
