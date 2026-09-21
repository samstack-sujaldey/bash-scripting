#!/bin/bash

read -p "Enter the process name to kill : " process
read -p "Are you sure you want to kill this process[Y/N] : " confirmation

if [[ $confirmation == "y" || $confirmation == "Y" ]]; then
  pkill -f "$process"
  echo "Process $process killed"
else
  echo "Aborted"
fi

# run first -> ./3cpu_ram_usage.sh &
# then -> ./5kill_process.sh
# -> 3cpu_ram_usage
# -> y
