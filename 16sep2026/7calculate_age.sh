#!/bin/bash

read -p "Enter DOB : " DOB

TODAY=$(date +%Y-%m-%d)

if [[ $(date -d "$DOB" +%s) -gt $(date -d "$TODAY" +%s) ]]; then
  echo "Error: DOB is in the future"
  exit 1
fi

years=0
while [[ "$(date -d "$DOB +$((years + 1)) years" +%s)" -le "$(date -d "$TODAY" +%s)" ]]; do
  ((years++))
done

months=0
while [[ "$(date -d "$DOB +$years years +$((months + 1)) months" +%s)" -le "$(date -d "$TODAY" +%s)" ]]; do
  ((months++))
done

days_in_sec=$(date -d "$DOB +$years years +$months months" +%s)

day=$((($(date -d "$TODAY" +%s) - days_in_sec) / 86400))

echo "AGE: $years years, $months months, $day days"

# run : ./7calculate_age.sh
