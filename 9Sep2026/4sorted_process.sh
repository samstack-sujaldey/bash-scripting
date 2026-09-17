#!/bin/bash

echo "########## SORT BY CPU% ##########"
ps -eo pid,user,%cpu,comm --sort=-%cpu | head

echo 

echo "########## SORT BY % ##########"
ps -eo pid,user,%mem,comm --sort=-%mem| head
