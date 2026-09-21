#!/bin/bash

read -p "Enter 1st number : " num1
read -p "Enter the operator : " op
read -p "Enter 2nd number : " num2

case "$op" in
+) res=$((num1 + num2)) ;;
-) res=$((num1 - num2)) ;;
\*) res=$((num1 * num2)) ;;
^) res=$((num1 ** num2)) ;;
%) res=$((num1 % num2)) ;;
/)
  if [[ "$num2" -eq 0 ]]; then
    echo "Error : Divisible by 0"
    exit 1
  fi
  res=$(echo "scale=4; $num1 / $num2" | bc)
  ;;
*)
  echo "Invalid operator"
  exit 1
  ;;
esac

echo "Result : $res"

# run : ./calculator.sh
