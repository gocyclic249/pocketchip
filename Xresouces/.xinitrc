#!/bin/bash 

xrdb -merge ~/.Xresources 

eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

feh --bg-scale ~/.background &

clipit &

sxhkd &

xrandr --dpi 96 &

sxhkd &

xmodmap -e 'clear lock' -e 'keycode 0x42 = Escape' &

dropbox-cli start &

uxterm &


while true; do
        xsetroot -name "Time: $(date +%H%M)::IP: $(/sbin/ifconfig wlp2s0 | grep 'inet '| awk '{print $2}')$(/sbin/ifconfig enp4s0 | grep 'inet '| awk '{print $2}')::Dropbox: $(dropbox-cli status)::Battery: $(acpi -b | awk 'sub(/,/,"") {print $3, $4}')"
        sleep 5
done&

exec dwm
