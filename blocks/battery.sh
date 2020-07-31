#!/bin/sh

read -r capacity </sys/class/power_supply/BAT0/capacity

echo " 🔋${capacity}% "

if [ "$capacity" -le 25 ] ; then
    notify-send -u critical "Battery level is critical!"    
fi
