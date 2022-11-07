#!/bin/bash
# This is my first shell script
# Comparing two integers
echo "Enter three numbers one after anone in one line"
read a b c
if ((a>b)) && ((a>c))
then
	echo "$a is large among $a $b $c"
else
	if ((b>c))
	then
		echo " $b is large among $a $b $c"
	else
		echo " $c is large among $a $b $c"
	fi
fi

 
#End of my script
