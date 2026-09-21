#!/bin/bash

read -p "Enter file name : " FILE
read -p "Enter the record type (default A) : " RECORD

if [[ -z "$FILE" || ! -f "$FILE" ]]; then
  echo "File either not present or empty"
  exit 1
fi

while IFS= read -r domain; do

  if [[ -z "$domain" || "$domain" == \#* ]]; then
    continue
  fi

  RESULT=$(dig +short -t "$RECORD" "$domain" 2>/dev/null)

  if [ -n "$RESULT" ]; then
    echo
    echo "$domain"
    echo "$RESULT"
  else
    echo "No Result"
  fi

done <"$FILE"

# run : ./5_DNS_lookup.sh
# then -> 5_domain.txt
