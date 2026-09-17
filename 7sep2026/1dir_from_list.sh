#!/bin/bash

file=$1

cat $file | while read -r dir; do 
  mkdir -p $dir

  echo "Directory created : $dir"
done
