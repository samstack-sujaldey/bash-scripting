#!/bin/bash

d=$(date +%Y-%m-01)
while [[ "$(date -d "$d" +%m)" == "$(date +%m)" ]]; do
  printf "%s %s\n" "$d" "$(date -d "$d" +%A)"
  d=$(date -d "$d +1 day" +%Y-%m-%d)
done
