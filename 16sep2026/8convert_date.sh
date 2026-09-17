#!/bin/bash

read -p "Enter log file path : " LOGFILE

while read -r ts; do
  date -d "@$ts" '+%Y-%m-%d %H:%M:%S'
done <"$LOGFILE"
