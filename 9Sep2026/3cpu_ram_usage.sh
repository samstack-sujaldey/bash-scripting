#!/bin/bash

INTERVAL=5

while true; do 
CPU=$(echo "100 - $(vmstat | awk 'NR==3 {print $15}')" | bc)
  RAM=$(free | awk '/Mem:/ {print $3/$2*100}')

  echo "$(date '+%Y-%m-%d %H:%M:%S') | CPU ==> ${CPU}% | RAM ==> ${RAM}%" >> 3_CPU_RAM_Usage.log
  sleep "$INTERVAL"
done

