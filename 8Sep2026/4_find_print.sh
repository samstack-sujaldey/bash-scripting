#!/bin/bash

read -p "Enter file : " filepath

read -p "Enter number of line want to find : " n

awk -v n="$n" 'NR==n' "$filepath"

# run : ./4_find_print.sh
# -> ./4_sample_findPrint.txt
# -> 3
