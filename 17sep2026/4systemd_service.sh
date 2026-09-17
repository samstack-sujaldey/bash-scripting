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
  sudo systemctl status "$SERVICE"
  ;;
enable)
  sudo systemctl enable "$SERVICE"
  ;;
disable)
  sudo systemctl disable "$SERVICE"
  ;;
*)
  echo "Either $arg or $SERVICE not found."
  ;;
esac
