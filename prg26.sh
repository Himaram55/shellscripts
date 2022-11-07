#!/bin/bash
#Check if the given user is locked?
read -p "Enter the username:" user
grep -w ^$user /etc/shadow >/dev/null 2>&1
res=$?
if [ $res -eq 0 ]
then
 echo "User found... Checking if $user locked.."
 grep -w ^$user /etc/shadow | cut -f2 -d:| grep ^! >/dev/null 2>&1
 res=$?
 if [ $res -eq 0 ]
 then
  echo "User is locked"
 else
  echo "User $user is not locked..."
 fi #inner if
else
 echo "user $user not found"
fi #out if
#End of the program
