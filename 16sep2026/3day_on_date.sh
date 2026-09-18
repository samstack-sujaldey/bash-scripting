#!/bin/bash

read -p "Enter date : " DATE

date -d "$DATE" +%A

# run : ./3day_on_date.sh
# then -> 15 sep
