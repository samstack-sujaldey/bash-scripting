#!/bin/bash

read -p "Enter package name : " PACKAGE

if dpkg-query -W -f='${Status}' "$PACKAGE" 2>/dev/null | grep -q "install ok installed"; then
  echo "$PACKAGE is installed"
else
  sudo apt install "$PACKAGE" -y
fi

# run : ./1check_package.sh
# then -> wcalc
