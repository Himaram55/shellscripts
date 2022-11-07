#!/bin/bash
#Demonstrate Logical operators
# -a for and operation
# -o for logical or
# ! for Not
#Obtain three numbers from command line. Else read those from the keyboard
if [ $# -ne 3 ]
then
  read -p "Enter the value of num1:" num1
  read -p "Enter the value of num2:" num2
  read -p "Enter the value of num3:" num3
else
  num1=$1
	num2=$2
	num3=$3
fi
#	if [ $num1 -gt $num2 -a $num1 -gt $num3 ]
	if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
	then
	 echo "$num1 is big"
	else
	 if [ $num2 -gt $num3 ]
	 then
	  echo "$num2 is big"
	 else
	  echo "$num3 is big"
	 fi
	fi
