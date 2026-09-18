#!/bin/bash

read -p "Enter file name : " FILE

if [[ -z "$FILE" || ! -f "$FILE" ]]; then
  echo "Either file is not present or is empty"
fi

echo "##### HTTP CODE #####"

while IFS= read -r domain; do
  if [[ -z "$domain" || "$domain" == \#* ]]; then
    continue
  fi

  RESULT=$(curl -sL -o /dev/null -w "%{http_code}" "$domain")

  if [[ -n "$RESULT" ]]; then
    echo "$domain ==> $RESULT"
  else
    echo "No Result"
  fi

done <"$FILE"

# run : ./6_status_code.sh
# then -> 6_domains.txt
