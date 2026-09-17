#!/bin/bash

#######################################################################
# Author : Sujal Dey
# Date : 1 Sep 2026
# About : This script sync two files into third file without duplicate
#######################################################################

file1=$1
file2=$2

read -p "Enter the combined filename or path : " FILENAME

# Create the third file
touch $FILENAME

# This command will sort file alphabatically
# sort -u $file1 $file2 >> file3.txt

awk '!visited[$0]++' $file1 $file2 >> $FILENAME

echo "#################"
echo "New File Content"
echo "#################"

cat $FILENAME
