#!/bin/bash

N=$1

awk -v n="$N" ' BEGIN { 
  srand()
  
  split("Apeksha Nitesh Sujal Nandani Komal", firstname, " ")
  split("Wilson Smith Patel Sharma Green", lastname, " ")

  for (i = 1; i <= n; i++) {
    name = firstname[int(rand()*5)+1] " " lastname[int(rand()*5)+1]
    ip = int(rand()*233)+2 "." int(rand()*256) "." int(rand()*256) "." int(rand()*254)+1
    date = sprintf("%04d-%02d-%02d", 2024+int(rand()*3), int(rand()*12)+1, int(rand()*28)+1)
    print name "," ip "," date
  }
}' >7fake_dataset.csv

# run : ./7create_dataset.sh 10
