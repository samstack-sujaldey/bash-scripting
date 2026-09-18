#!/bin/bash

filepath=$1

grep -E -o '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' "$filepath" | sort | uniq -c | sort -nr | head -n 10

# run : ./9access_log.sh 9_sample.txt
