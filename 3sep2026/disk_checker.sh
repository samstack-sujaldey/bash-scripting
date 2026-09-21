#!/bin/bash

df -hT -x tmpfs -x fuse.snapfuse -x devtmpfs | awk 'NR > 1 {print $6, $7}' | while read -r pct mount; do
  pct=${pct%\%}
  if [ "$pct" -gt 80 ]; then
    echo "WARNING : $mount is above 80%."
  else
    echo "Mount ==> $mount <== is fine."
  fi
done

# run : ./disk_checker.sh
