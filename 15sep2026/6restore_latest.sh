#!/bin/bash

DB="mydb"
read -p "Enter the backup dir path : " DIR

file=$(find "$DIR" -type f -name "${DB}*.sql.gz" -printf '%T@ %p\n' | sort -rn | head -n 1 | awk '{print $2}')
echo "Latest : $file"

gunzip -c "$file" | sudo mysql -u root "$DB"

echo "Unzipping Done"

# run : ./6restore_latest.sh
# then -> backup
