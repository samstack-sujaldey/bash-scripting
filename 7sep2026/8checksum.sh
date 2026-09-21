#!/bin/bash

folderpath=$1

find "$folderpath" -type f -exec md5sum {} + | sort | uniq -w32 -dD

# run : ./8checksum.sh 8example/
