#!/bin/bash

read -p "Enter file : " FILE

while read -r host; do
  ping -c 1 -W 1 $host &>/dev/null && echo "UP: $host" || echo "DOWN: $host"
done < $FILE
