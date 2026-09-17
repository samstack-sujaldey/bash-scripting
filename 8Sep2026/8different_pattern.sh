#!/bin/bash


read -p "Enter file :" filepath
read -p "Enter 1st pattern :" pattern1
read -p "Enter 2nd pattern :" pattern2

# awk -v p1="$pattern1" -v p2="$pattern2" '$0 ~ p1 && $0 ~ p2' "$filepath"

grep -E "$pattern1.*$pattern2|$pattern2.*$pattern1" $filepath
