#!/bin/bash

filepath=$1

grep -E -o -i '[a-zA-Z0-9+-._%]+@[a-zA-Z0-9_.]+\.[a-zA-Z]{2,}' $filepath

# run : ./1_extract_email1.sh ./1_email_sample.txt
