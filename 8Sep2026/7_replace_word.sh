#!/bin/bash

DIR=$1
OLD=$2
NEW=$3

find "$DIR" -type f -exec sed -i "s/$OLD/$NEW/g" {} +

# run : ./7_replace_word.sh ./7_sample_dir/ punjab Chennai
