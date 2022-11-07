#!/bin/bash
read -p "Enter the username:" u1
#check if user exists
grep -2w ^$u1 /etc/passwd >/dev/null 2>&1
res=$?
if [ $res -eq 0 ]
then
   echo "User $u1 exists in this system.. proceding to lock the user.."
   passwd -l $u1 >/dev/null 2>&1
   res=$?
   if [ $res -eq 0 ]
   then
     echo "$u1 locking succeeded"
   else
     echo "User $u1 could not be locked..Check with L2 team"
   fi #Inner if ends here
else
   echo "User $1 doesnt exist.."
fi #outer if ends here

