#!/bin/bash

function colorme()
{
 echo "In colorme function"
 echo $1
 return 55
}

#Main proram

echo "In main program"
colorme red
colorme blue
colorme green
echo $? #This prints the function returned value.
echo "AGain in Main program"

#End

