#!/bin/bash

read -p "Enter threshold : " THRESHOLD

DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

if [[ $DISK_USAGE -gt $THRESHOLD ]]; then
  echo "Alert: Disk Usage is above $THRESHOLD%"
else
  echo "Disk Usage is fine"
  echo "Usage: $DISK_USAGE%"
fi

# run : ./2disk_usage.sh
