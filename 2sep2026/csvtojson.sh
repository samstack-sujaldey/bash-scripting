#!/bin/bash

set -euo pipefail

FILE=$1

# csvjson $FILE | jq . > output.json
# cat output.json

awk -F"," 'NR==1 {
  for (i=1; i<=NF; i++) fields[i]=$i
  next
}
{
  printf "{"

  for (i=1; i<=NF; i++){
    printf "\"%s\":\"%s\"", fields[i], $i
    if (i<NF) printf ","
  }

  printf "}"

}' "$FILE" | jq -s . >output.json

echo "################################"
echo "JSON file created : output.json"
echo "################################"
cat output.json

# run : ./csvtojson.sh
