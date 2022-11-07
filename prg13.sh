#!/bin/bash
#Script to perform arithmetic operations
#
read -p "Enter first value:" num1
read -p "Enter second value:" num2
echo "Given numebers are $num1 and $num2"
res=`expr $num1 + $num2`
echo "The addition is $res"
res=`expr $num1 - $num2`
echo "The subtraction is $res"
res=`expr $num1 \* $num2`
echo "The multiplication is $res"
res=`expr $num1 / $num2`
echo "The integer division is $res"
res=`expr $num1 % $num2`
echo "The modulus(the remainer obtained in the integer division) is $res"
#End of arithmetic operations
