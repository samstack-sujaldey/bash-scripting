#!/bin/bash

FILE1=$1
FILE2=$2

COLUMN_NAME=$(comm -12 <(head -1 "$FILE1" | tr ',' '\n' | sort) <(head -1 "$FILE2" | tr ',' '\n' | sort))

file1_pos=$(head -1 "$FILE1" | awk -F"," -v k="$COLUMN_NAME" '{
  for(i=1; i<=NF; i++) if($i==k) print i
}')

file2_pos=$(head -1 "$FILE2" | awk -F"," -v k="$COLUMN_NAME" '{
  for(i=1; i<=NF; i++) if($i==k) print i
}')

awk -F"," -v file1_pos="$file1_pos" -v file2_pos="$file2_pos" '
  NR==FNR { table[$file2_pos]=$2; next }
  { if ($file1_pos in table) print $0 "," table[$file1_pos] }
' "$FILE2" "$FILE1"

# run : ./2merge_file.sh 2emp.csv 2cities.csv
