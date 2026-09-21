#!/bin/bash

read -p "Enter time[in minutes] : " TIME

min=$(echo "$TIME" | awk -F"." '{print $1}')
sec=$(echo "$TIME" | awk -F"." '{print $2}')

total_sec=$(((min * 60) + sec))
echo "$total_sec sec"
while [[ "$total_sec" != 0 ]]; do
  total_sec=$((total_sec - 1))
  sleep 1
  if [[ "$total_sec" -eq 0 ]]; then
    echo "TIME UP"
  elif [[ "$total_sec" -le 10 ]]; then
    echo "$total_sec sec remaining"
  else
    echo "$total_sec sec"
  fi
done

# run : ./6countdown.sh
# then -> 0.20 for 20 seconds
