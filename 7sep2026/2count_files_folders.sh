#!/bin/bash

dir=$1

count=$(tree $dir | tail -1 | awk '{print "Directories : " $1-1, "Files : " $3}')

echo "$count"
