#!/bin/bash

LARGE_LIST=$1

sort -S 35% --parallel=4 -u "$LARGE_LIST" >sorted_list.txt

# run : ./5deduplicate_sort.sh
