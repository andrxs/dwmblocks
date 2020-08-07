#!/bin/sh

read -r CAPACITY </sys/class/power_supply/BAT0/capacity
read -r STATUS </sys/class/power_supply/BAT0/status

ICON=$(echo $STATUS | sed "s/[Dd]ischarging/🔋/;s/[Nn]ot charging/🛑/;s/[Cc]harging/🔌/;s/[Uu]nknown/♻️/;s/[Ff]ull/⚡/")

echo "$ICON${CAPACITY}%"

if [ "$CAPACITY" -le 25 ] && [ "$ICON" = "🔋" ]; then
    notify-send -u critical "Battery level is critical!"    
fi
