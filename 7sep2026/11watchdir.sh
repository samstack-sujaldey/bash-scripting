#!/bin/bash

folder=$1
interval=${2:-5}

last_check=$(date +%s)

while true; do 
  find "$folder" -type f -newermt "@$last_check" | while read -r file; do 
    echo "Processing file : $file"
  done
    
  last_check=$(date +%s);
  sleep $interval
done

