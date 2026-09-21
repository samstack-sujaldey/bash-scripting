#!/bin/bash

read -p "Enter file name : " Large_File

du -h $Large_File

read -p "Enter the size you want the chunks [10k, 15M] : " Split_Size

split -b $Split_Size $Large_File "$Large_File"_part_

find . -name "${Large_File}_part_*"

# run : ./12split_file.sh
# then -> largefile.txt
# then -> 4K
