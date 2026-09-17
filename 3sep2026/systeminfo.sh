#!/bin/bash

HOST_NAME=$(hostnamectl | awk 'NR==1 {print $3}')
echo "==> Host Name : $HOST_NAME";

OS_VERSION=$(hostnamectl | awk -F":" 'NR==7 {print $2}')
echo "==> OS Version : $OS_VERSION"

KERNAL_VERSION=$(hostnamectl | awk -F":" 'NR==8 {print $2}')
echo "==> Kernal Version : $KERNAL_VERSION"

UPTIME=$(uptime -p | awk -F"up" '{print $NF}')
echo "==> UP Time : $UPTIME"

echo "==> Logged-in Users : $(w -hs | awk '{print $1}')"
