#!/bin/bash

echo "########## Reboot History ##########"
echo "Last Boot : $(uptime -s)"
echo "Uptime : $(uptime -p)"

echo

echo "Recent Boots : "
last boot | awk 'NR==2 {print $6, $7}'

# run : ./11last_uptime_reboot.sh
