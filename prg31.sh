#Demonstrate Arithmetic expression with compound perenthesis.
#!/bin/bash
read -p "Enter first number:" num1
read -p "Enter second number:" num2
#Here are arithmetic comparision
##  -gt  >
##  -lt  <
##  -ge  >=
##  -le  <=
##  -eq  ==
##  -ne  !=
## these symbols can be used in the compound style ((operaand Operator Operand)) 
#if ((num1>num2)) # if [ $num1 -gt $num2 ]
if ((num1>num2)) 
then
  echo "$num1 is big"
fi
if ((num1<num2))
then
  echo "$num1 is lower"
fi
if ((num1==num2))
then
  echo "num1 and num2 are equal"
fi
if ((num1>=num2))
then
 echo "num1 is greater or equal to num2"
fi
if ((num1<=num2))
then
 echo "num1 is lessthan or equal to num2"
fi
if ((num1!=num2))
then
 echo "num1 is Not equal to num2"
fi

#End
