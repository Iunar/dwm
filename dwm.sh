#!/bin/bash

# Resolution
xrandr --output DP-2 --mode 1920x1080 --rate 240 &

# Mouse
xinput set-prop 9 "libinput Accel Profile Enabled" 0 1 0 &
xinput set-prop 9 "libinput Accel Speed" -0.35 &

# Keyboard
setxkbmap -option caps:escape &

# Wallpaper
nitrogen --restore &

# Compositor
picom --no-fading-openclose &

#exec /home/autumn/Documents/dwm-6.5/dwm
while true; do
    # Log stderror to a file 
    $HOME/dwm/dwm 2> ~/.dwm.log
    # No error logging
    #dwm >/dev/null 2>&1
done

