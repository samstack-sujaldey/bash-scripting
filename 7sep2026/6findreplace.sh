#!/bin/bash

search=$1
replace=$2

grep -rl "$search" . | xargs sed -i "s/$search/$replace/g"

# run : ./6findreplace.sh project PROJECT
