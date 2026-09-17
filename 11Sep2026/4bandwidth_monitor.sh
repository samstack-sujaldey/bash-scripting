#!/bin/bash

while true; do 
  RECEIVED=$(grep "eth0" /proc/net/dev | awk '{print $2}')
  TRANSMIT=$(grep "eth0" /proc/net/dev | awk '{print $10}')

  if [ -n "$PREV_RECEIVED" ]; then
    RVD=$(( RECEIVED - PREV_RECEIVED ))
    TMT=$(( TRANSMIT - PREV_TRANSMIT ))
    echo "$(date '+%H:%M:%S') | RECEIVED: ${RVD} B/s | TRANSMIT: ${TMT} B/s" >> 4network_monitor.txt
  fi

  PREV_RECEIVED=$RECEIVED
  PREV_TRANSMIT=$TRANSMIT
  sleep 5
done
