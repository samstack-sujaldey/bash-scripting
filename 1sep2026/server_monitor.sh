#!/bin/bash

#############################################################
# Author : Sujal Dey
# Date : 2 Sep 2026
# About : This script will monitor CPU, RAM and DISk usage
#############################################################

CPU_IDLE=$(vmstat | awk 'NR==3 {print $15}')

RAM_USAGE=$(free -m | awk 'NR==2 {printf "%d\n", $3/$2*100}')

DISK_USAGE=$(df -h / | awk 'NR==2 {gsub(/%/,"",$5); print $5}')

if [[ $DISK_USAGE -gt 50 ]]; then
	echo "WARNING ==> Disk Usage is higher than 50%"	
else
	echo "Disk Usage is fine"
fi

if [[ $CPU_IDLE -lt 50 ]]; then
	echo "WARNING ==> CPU Usage is higher than 50%"
else 
	echo "CPU Usage is fine"
fi

if [[ $RAM_USAGE -gt 50 ]]; then
	echo "WARNING ==> RAM Usage is higher than 50%"
else 
	echo "RAM Usage is fine"
fi
