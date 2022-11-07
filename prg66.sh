#!/bin/bash
#Function declaration
function printme {
echo "In printme function"
echo "Helo Kudlu"
return 55
}
#End of function definition
#Script begins here
echo "Before calling funtion"
printme
echo $?
echo "Executed printme function"
#End of script
