#!/bin/bash

FILEPATH=$1

find $FILEPATH -name "*.log" -mtime 0

# run : ./4find_log.sh /var/log
