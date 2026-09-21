#!/bin/bash

set euo -pipeline

read -p "Enter the service name : " SERVICE
read -p "Enter the argument : " arg

case "$arg" in
start)
  sudo systemctl start "$SERVICE"
  ;;
stop)
  sudo systemctl stop "$SERVICE"
  ;;
status)
  sudo systemctl is-active "$SERVICE"
  ;;
enable)
  sudo systemctl enable "$SERVICE"
  ;;
disable)
  sudo systemctl disable "$SERVICE"
  ;;
restart)
  sudo systemctl restart "$SERVICE"
  ;;
*)
  echo "Either $arg or $SERVICE not found."
  ;;
esac

# run : ./4systemd_service.sh
# then -> nginx
# then -> [ stop or start ...]
