#!/bin/bash

read -p "Enter file name : " FILE

if [[ -z "$FILE" || ! -f "$FILE" ]]; then
  echo "Either file not present or empty"
  exit 1
fi

echo "Downloading..."
wget -i "$FILE"

echo "Done"
