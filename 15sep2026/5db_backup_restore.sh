#!/bin/bash

DB="mydb"
PASS="password"
read -p "Enter the backup dir path : " DIR
read -p "How many latest backups wants to keep : " KEEP

mkdir -p "$DIR"

TIMESTAMP=$(date +%Y_%m_%d_%H_%M_%S)

sudo mysqldump -u root -p"$PASS" "$DB" | gzip >"$DIR/${DB}_${TIMESTAMP}.sql.gz"

find "$DIR" -type f -name "${DB}_*.sql.gz" -printf '%T@ %p\n' | sort -rn | tail -n +$((KEEP + 1)) | awk '{print $2}' | xargs -r rm --

echo "Done. Kept the latest $KEEP backup files"

# run : ./5db_backup_restore.sh
# then -> backup
# then -> 2
