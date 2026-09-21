#!/bin/bash

PRS=$(ps -eo pid,stat,comm | awk '$2 ~ /Z/ {print $3 "\t" $1}')
if [ -z "$PRS" ]; then
  echo "There is no zombie process present"
else
  echo "Zombie processes with their id"
  echo "$PRS"
fi

# run : python3 zombie.py
# -> ./6Zombie.sh
