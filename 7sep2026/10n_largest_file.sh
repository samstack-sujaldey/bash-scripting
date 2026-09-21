#!/bin/bash

N=$1

find . -type f -exec du -h {} + | sort -nr | head -$N

# run : ./10n_largest_file.sh 1
