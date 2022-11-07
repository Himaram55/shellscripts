#!/bin/bash
echo "Compare two numbers"
read -p "Enter the first number:" num1
read -p "Enter second number:" num2
test $num1 -gt $num2
res=$?
echo "The result is $res"
#End

