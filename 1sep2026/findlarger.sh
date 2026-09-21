#!/bin/bash

################################################################
# Author:Sujal Dey
# Date:1 Sep 2026
# About:This script find larger files then 20KB and delete them
#################################################################

#LOG_PATH=$1

# -size +20 means greater then 20kb 
# -printf '%f\n' will print the file name
find . -type f -size +20k -printf '%f\n' -delete
