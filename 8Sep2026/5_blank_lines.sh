#!/bin/bash

filepath=$1

awk 'NF' $filepath

# run : ./5_blank_lines.sh 5_sampe.txt
