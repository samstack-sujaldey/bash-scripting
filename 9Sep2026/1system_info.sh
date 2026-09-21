#!/bin/bash

echo "########## CPU ##########"
iostat -c | awk 'NR>2 && NF' | sed 's/avg-cpu: //g; s/^ *//g'

echo

echo "####### RAM #######"
free -h | awk 'NR<3' | sed 's/^ *//; s/Mem: *//'

echo

echo "########## DISK ##########"
df -h /

echo

echo "########## KERNEL ##########"
hostnamectl | awk 'NR==8' | sed 's/^ *Kernel: //g'

echo

echo "########## OS ##########"
hostnamectl | awk 'NR==7' | sed 's/^ *Operating System: //g'

echo

echo "########## UPTIME ##########"
uptime -p | sed 's/up //g'

# run : ./1system_info.sh
