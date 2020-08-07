#!/bin/sh

LC_NUMERIC="en_US.UTF-8"
# on debug w
#set -xv # Turn on debugging

# MEMORY
MEM_INFO=$(free -m | sed -n 2p | awk '{print $2,$3;}')
TOTAL_MEM=$(echo ${MEM_INFO} |  awk '{print $1/1024}')
MEM_USAGE=$(echo ${MEM_INFO} |  awk '{print $2/1024}')  

echo $(printf "MEM %.2fG/%.2fG" $MEM_USAGE $TOTAL_MEM)


IS_HIGH_MEM_USAGE=$(echo ${MEM_INFO} | awk '{ if( $2/$1*100 > 75 ) print "1" }')

#When your system reaches 75% memory utilization, it triggers an notify
if [ ! -n $IS_HIGH_MEM_USAGE  ]; then
    notify-send -u critical Warning "Memory Utilization is High!"  
fi
 
#set +xv # Turn off debugging
