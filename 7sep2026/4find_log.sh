#!/bin/bash

FILEPATH=$1

find $FILEPATH -name "*.log" -mtime 0
