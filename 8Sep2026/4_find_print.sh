#!/bin/bash

read -p "Enter file : " filepath

read -p "Enter number of line want to find : " n


awk -v n="$n" 'NR==n' "$filepath"
