#!/bin/bash

OUTPUT="5large_list.txt"
LINES=1000000 # 1 million lines

# Generate lines like: "item_48291" with intentional duplicates
awk 'BEGIN {
    for (i = 1; i <= 1000000; i++) {
        # Random number between 1 and 500000 (only half as many unique values → duplicates)
        n = int(rand() * 500000) + 1
        print "item_" n
    }
}' >"$OUTPUT"

echo "Generated $LINES lines in $OUTPUT"
echo "Unique items: ~500000 (rest are duplicates)"
