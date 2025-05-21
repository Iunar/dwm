xrandr --output DP-2 --mode 1920x1080 --rate 240 &
xrandr --output HDMI-1 --mode 1920x1080 --rate 100 --left-of DP-2 &

nitrogen --restore &

picom &

xinput set-prop $(xinput list --id-only 'Endgame Gear Endgame Gear OP1 8k Gaming Mouse') "libinput Accel Profile Enabled" 0 1 0 &
xinput set-prop $(xinput list --id-only 'Endgame Gear Endgame Gear OP1 8k Gaming Mouse') "libinput Accel Speed" -0.35 &

setxkbmap -option caps:escape &

# wal -R &

# exec ~/.local/src/dwm/dwm
while true; do
    # Log stderror to a file 
    ~/.local/src/dwm/dwm 2> ~/.dwm.log
    # No error logging
    #dwm >/dev/null 2>&1
done
