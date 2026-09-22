#!/bin/bash

FILE1=$1
FILE2=$2

clean() {
  sed 's/#.*//;s/^[[:space:]]*//;s/[[:space:]]*$//' "$1" | grep -v '^$'
}

RESULT=$(diff <(clean "$FILE1") <(clean "$FILE2"))

if [[ -z $RESULT ]]; then
  echo "No meaningful differences found"
else
  echo "##### Difference #####"
  echo "$RESULT"
fi

# run : ./8find_diff.sh 8sample1.conf 8sample2.conf
