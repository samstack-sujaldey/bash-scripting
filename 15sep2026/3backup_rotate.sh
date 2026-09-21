#!/bin/bash

read -p "Enter backup folder path : " FOLDERPATH

files=$(find "$FOLDERPATH" -type f -printf '%T@ %p\n' | sort -rn | tail -n +6 | awk '{print $2}')
echo "Following files will be deleted : "
echo "$files"
read -p "Are you sure you want to delete these files[y/n] : " confirm
if [[ "$confirm" == [yY] ]]; then
  echo "$files" | xargs -r rm --
  echo "##### DELETED #####"
fi

# run : ./3backup_rotate.sh
# then -> ./backup
