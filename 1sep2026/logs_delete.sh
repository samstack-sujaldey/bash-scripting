#!/bin/bash

##################################################################################
# Author : Sujal Dey
# Date : 1 Sep 2026
# About : This Script will check for log files older then 7 days and delete them
################################################################################### 

# Find Log files older then 7 days and delete them
find /var/log -type f -name "*.log" -mtime +7 -delete 
