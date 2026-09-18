#!/bin/bash

echo "Users with their last login time: "
lslogins -o USER,LAST-LOGIN --user

# run : ./7last_login.sh
