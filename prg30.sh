#!/bin/bash
#Find the given vg existing in the system. Read vgname from the command line.
if [ $# -eq 0 ]
then
  echo "You have not entered any argument"
	echo "Exiting.."
else
  vgs|grep -w $1 >/dev/null
	if [ $? -eq 0 ]
	then
	   echo "The give vg $1 exists"
	else
	   echo "The given vg $1 does not exists"
  fi
fi
