#!/bin/bash

read -p "Enter directory path : " DIRPATH

NAME=$(basename "$DIRPATH")

tar -czvf ./backup/"$NAME"_$(date +%Y-%m-%d_%H_%M_%S)-backup.tar.gz "$DIRPATH" &>/dev/null

echo "########## Backup File Created !!! ##########"

# run : ./1backup_dir.sh
# then -> ./test
