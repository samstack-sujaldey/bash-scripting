#!/bin/bash

read -p "Enter file name : " FILE

if [[ -z "$FILE" || ! -f "$FILE" ]]; then
  echo "Either file empty or not present"
fi 

while IFS= read -r domain; do
  if [[ -z "$domain" || "$domain" == \#* ]]; then
    continue
  fi

  result=$(curl -sIL "$domain" | grep "HTTP" | awk '{last=$2} END {print last}')

  if [[ -n "$result" ]]; then
    echo "##### $domain #####"
    echo "$result"
  fi

done < "$FILE"
