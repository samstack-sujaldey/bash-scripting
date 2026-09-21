#!/bin/bash

THRESHOLD=5

FAILED_SSH=$(grep "Failed password" ./8_sample.log | awk '{print $16}' | sort | uniq -c | sort -nr)
while read count ip; do
  if [ "$count" -ge "$THRESHOLD" ]; then
    echo "Alert: $count failed ssh attempts from $ip"
  fi
done <<<"$FAILED_SSH"

# run : ./8ssh_login.sh
