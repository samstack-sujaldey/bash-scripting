#!/bin/bash

cd /home/sujal/practice/15sep2026/

tar -czf test_$(date +%Y-%m-%d_%H_%M_%S)-backup.tar.gz ./test/

echo "########## Backup File Created !!! ##########"
