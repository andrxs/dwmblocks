#!/bin/sh

# TEMPERATURE
read -r temp </sys/class/thermal/thermal_zone0/temp
temperature=${temp%???}

if [ "$temperature" -gt 70 ]; then
    echo "🔥 ${temperature}°C"
    notify-send -u critical Warning "CPU Temperature is High!"  
fi

# MEMORY
FREE=`free -m | grep 'Mem:' | awk {'print $4'}`

if [ $FREE -lt 1024 ]; then
    echo "🤯 ${ramusagePerc} MEM"
#    notify-send -u critical Warning "Memory Utilization is High! Free $FREE"  
fi

# comment
# comment 

