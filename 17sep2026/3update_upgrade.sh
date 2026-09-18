#!/bin/bash

LOGFILE=/tmp/upgrade-$(date +%Y_%m_%d_%H-%M-%S).log

if [[ "$1" == "-n" ]]; then
  apt update 2>/dev/null
  apt upgrade -s -y 2>/dev/null
else
  sudo apt update 2>/dev/null | tee -a "$LOGFILE"
  sudo apt upgrade -y 2>/dev/null | tee -a "$LOGFILE"
  sudo apt autoremove -y 2>/dev/null | tee -a "$LOGFILE"
fi

# run : ./3update_upgrade.sh
# run : ls /tmp/
