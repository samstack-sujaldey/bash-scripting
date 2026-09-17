#!/bin/bash

read -p "Enter host : " HOST
read -p "Enter port : " PORT

nc -zw 3 "$HOST" "$PORT" &>/dev/null && echo "The PORT:$PORT is open." || echo "The PORT:$PORT is close."
