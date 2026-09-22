#!/bin/bash

FILENAME=$1

SORTED_LIST=$(cat "$FILENAME" | awk -F"," 'NR>1 {print $4}' | sort -n)

min=$(echo "$SORTED_LIST" | awk 'NR==1')
echo "Minimum = $min"

max=$(echo "$SORTED_LIST" | tail -1)
echo "Maximum = $max"

mean=$(echo "$SORTED_LIST" | awk '{total+=$1} END {print total/NR}')
echo "Mean = $mean"

median=$(echo "$SORTED_LIST" | awk '
  { arr[NR] = $1 }
  END {
  if (NR % 2 == 1)
    printf arr[(NR+1)/2]
  else
    print (arr[NR/2] + arr[NR/2+1])/2
  }
  ')

echo "Median = $median"

# run : ./6calculate_statistic.sh 6dummy_data.csv
