#!/bin/bash

FILEPATH=$1

result=$(find $FILEPATH -empty -printf '%f\n' -delete)

if [[ -z $result ]]; then 
  echo "Files and Directories are not empty"
else
  echo "#############"
  echo "Files Deleted"
  echo "#############"
  echo "$result"
fi
