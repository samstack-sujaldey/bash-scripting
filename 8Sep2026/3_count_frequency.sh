#!/bin/bash

filepath=$1

sed 's/[[:punct:]]/ /g' $filepath | tr '[:upper:]' '[:lower:]' | tr -s " " "\n" | sort | uniq -c | sort -nr

# run : ./3_count_frequency.sh ./3_sample_forCount.txt
