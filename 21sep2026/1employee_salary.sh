#!/bin/bash

FILE=$1

echo "Department, Average, Max"
cat "$FILE" | awk -F"," 'NR>1 {
  dept=$3
  sum[dept]+=$4
  count[dept]++
  if ($4 > max[dept]) max[dept]=$4
}
END {
  for (d in sum)
    printf "%s, %.2f, %d\n", d, sum[d]/count[d], max[d]
}'

# run : ./1employee_salary.sh 1emp.csv
