#!/bin/bash
#working with read statement
read -p "Enter the value for val:" val
echo "The value for val is: $val"
echo -n "Enter a value:"
read val1
echo "$val1"

read -sp "Enter secret code:" code
echo -e "\nYou have entered $code"

