#!/bin/bash

FILE=$1
COl=$2

awk -F"," -v col="$COl" '{print $col}' "$FILE"

# run : ./6_extract_column.sh ./6_sample.txt 3
