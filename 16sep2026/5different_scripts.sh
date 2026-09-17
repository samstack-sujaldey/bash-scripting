#!/bin/bash

read -p "Enter date(default today) : " DATE

day=$(date -d "$DATE" +%w)

if [[ "$day" -gt 0 && "$day" -lt 6 ]]; then
  echo "this is logic 1"
else
  echo "this is logic 2"
fi
