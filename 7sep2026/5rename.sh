#!/bin/bash

folderpath=$1

counter=1
for file in $folderpath/*; do
  [[ -f $file ]] || continue

  filename=$(basename $file)

  mv "$file" "$folderpath/$counter.${file##*.}"

  echo "$filename => $counter.${file##*.}"
  ((counter++))
done

# run : ./5rename.sh ./renameFolder/
