#!/bin/bash

filepath=$1

sed 's/[[:punct:]]/ /g' $filepath | tr '[:upper:]' '[:lower:]' | tr -s " " "\n" | sort | uniq -c | sort -nr
