#!/bin/bash

set -euo pipefail

dir=$1

BACKUP_NAME="$(basename "$dir")_backup_$(date +%Y%m%d_%H%M%S).tar.gz"
tar -czvf "$BACKUP_NAME" "$dir"

echo "##########################"
echo "Directory backup created :" $BACKUP_NAME
echo "##########################"

# run : ./backup.sh checking/
