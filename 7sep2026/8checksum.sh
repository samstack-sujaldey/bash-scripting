#!/bin/bash

folderpath=$1

find . -type f -exec md5sum {} + | sort | uniq -w32 -dD
