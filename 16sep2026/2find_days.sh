#!/bin/bash

read -p "Enter first date[yyyy-mm-dd] : " FIRST
read -p "Enter second date[yyyy-mm-dd] : " SECOND

diff=$(($(date -d "$FIRST" +%s) - $(date -d "$SECOND" +%s)))

days=$((diff / 86400))

if [[ days -gt 0 ]]; then
  echo "$days"
else
  echo $((-days))
fi

# run : ./2find_days.sh
# then -> 18 sep 2026
# then -> 8 sep 2026
