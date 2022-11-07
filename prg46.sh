#!/bin/bash
#Demonstrate for loop in C-Style
read -p "Enter the upper limit to print Natural numbers:" n
for ((i=1;i<=n;i++))
do
  echo $i
done
#End of the script
