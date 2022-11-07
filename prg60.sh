#Demonstrate shell functions
#
function mycolor()
{
  echo "I am in mycolor function"
}
#main script begins here
echo "This script using function.. Calling function now.."
#call function by using its name
mycolor
echo "After calling function"
#End

