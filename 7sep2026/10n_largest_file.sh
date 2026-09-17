#!/bin/bash

N=$1

find . -type f -exec du -h {} + | sort -nr | head -$N
