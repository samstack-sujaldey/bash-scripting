#!/bin/bash

#for file in *.*; do
#  [ -f "$file" ] || continue
#
#  ext=${file##*.}
#
#  mkdir -p "$ext"
#
#  mv $file "$ext/"
#done

find . -type f | while read -r file; do
  filename=$(basename $file)

  ext=${filename##*.}

  mkdir -p "$ext"

  mv $filename "$ext/"

done

# run : ./file_organizer.sh
