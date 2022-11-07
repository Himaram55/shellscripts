#!/bin/bash
#Read the file. Take the file name from command line.
if [ $# -ne 0 ]
then
   if [ -e $1 -a -f $1 ]
	 then
	    exec < $1
			while read line
			do
			  echo $line
		  done
	 else
	    echo "The give $1 doesnt exists or its not a file to read"
	 fi
else
   echo "You have not entered file name. Usage is $0 /path/toFile"
	 echo "Try Again .... "
fi
#End of the program.
