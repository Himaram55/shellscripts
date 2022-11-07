#!/bin/bash
#Check if the file exists in the system.
#ls command would return false if file not found.
echo "Enter the file name with absolute path"
read fname
ls $fname > /dev/null 2>&1
res=$?
if [ $res -eq 0 ]
then
   echo "The given  file $fname found"
else
   echo "The given  file $fname does'nt exists"
fi

