#!/bin/bash

[ $# -eq 0 ] && { echo "Usage: $0 service1 service2 ... " exit1; }

printf "%-20s %-12s\n" "SERVICE" "ACTIVE"
printf "%-20s %-12s\n" "-------" "------"

for service in "$@"; do
  check=$(sudo systemctl is-active "$service" 2>/dev/null)
  printf "%-20s %-12s\n" "$service" "$check"
done

# run : ./6multiple_status.sh nginx docker
