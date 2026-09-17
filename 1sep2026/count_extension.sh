#!/bin/bash

################################################################################################
# Author = Sujal Dey
# Date = 1 Sep 2026
# About = This Script will count file extension print the folder structure in tree like format
################################################################################################

# Get all the files
FIND_FILES=$(find . -type f)

# Extract extension and sort them alphabetically
EXTENSIONS=$(awk -F'.' '{print $NF}' <<< "$FIND_FILES" | sort)

# Count each extension
COUNT=$( uniq -c <<< "$EXTENSIONS")

echo "###################"
echo "Count of Extension"
echo "###################"
echo "$COUNT"

# Print folders in tree format
echo "#################"
echo "Tree Format"
echo "#################"
tree
