#!/bin/bash

file=$1

cat $file | while read -r dir; do
  mkdir -p $dir

  echo "Directory created : $dir"
done

# run : ./1dir_from_list.sh 1list.txt
