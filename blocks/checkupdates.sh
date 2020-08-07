#!/bin/sh

#set -xv # Turn on debugging
PKGs=$(checkupdates | wc -l)

if [ $PKGs -gt 0 ] ; then
    notify-send "Pending updates:" "$(checkupdates)";
    echo " 📦:[$PKGs] "
fi

#set +xv # Turn off debugging
