#!/bin/bash

START_PORT=$1
END_PORT=$2
IP_ADDRESS=$3

nmap -p $START_PORT-$END_PORT --open $IP_ADDRESS | grep -E '^[0-9]+/'

# run = ./port_scanner.sh 0 63555 172.20.50.122
