#!/bin/bash

echo "Before: $(df -h / | awk 'NR==2 {print $4}') free"

sudo apt clean
sudo apt autoremove --purge -y
sudo find /tmp -type f -mtime +7 -delete
sudo find /var/tmp -type f -mtime +7 -delete
sudo journalctl --vacuum-time=7d
rm -rf ~/.cache/thumbnails/*

echo "After: $(df -h / | awk 'NR==2 {print $4}') free"

# run : ./10clean_cache_temp.sh
