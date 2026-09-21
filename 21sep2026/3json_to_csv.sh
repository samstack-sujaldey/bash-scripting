#!/bin/bash

FILE=$1

jq -r '.[0] | keys_unsorted | join(",")' "$FILE" >3output.csv

jq -r '.[] | [.[]] | join(",")' "$FILE" >>3output.csv

# run : ./3json_to_csv.sh 3data.json
