#!/bin/bash

read -p "Enter username : " USER

echo "########## AUDIT ##########"
sudo -l -U $USER

echo

echo "########## SUDO GROUP ##########"
getent group sudo

# run : ./12audit_sudo.sh
