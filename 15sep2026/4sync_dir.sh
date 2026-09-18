#!/bin/bash

read -p "Enter 1st directory path : " DIR1
read -p "Enter 2st directory path : " DIR2
read -p "Enter synced directory path : " DIR3

mkdir -p "$DIR3"

all_files=$(find "$DIR1" "$DIR2" -type f -printf '%f\n' | sed 's|.*/||' | sort -u)

for f in $all_files; do
  exits1=$DIR1/$f
  exits2=$DIR2/$f
  dest_file=$DIR3/$f

  if [[ -f "$exits1" && -f "$exits2" ]]; then
    cat "$exits1" "$exits2" >>"$dest_file"
    echo "Appended: $f (from $DIR1 and $DIR2)"

  elif [[ -f "$exits1" ]]; then
    cat "$exits1" >>"$dest_file"
    echo "Appended: $f (form $DIR1)"

  elif [[ -f "$exits2" ]]; then
    cat "$exits2" >>"$dest_file"
    echo "Appended: $f (form $DIR2)"
  fi
done

# run : ./4sync_dir.sh
# then -> dir1
# then -> dir2
# then -> dir3
