#!/bin/bash

folderpath=$1

for file in $folderpath; do 
  [[ -f $file ]] || continue

  res=$(wc "$file")
  echo "$res"
done
