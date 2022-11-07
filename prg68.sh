#!/bin/bash
#Script to create a swapspace and check the cpuinfo,meminfo and to kill a process using PID and check the swap space
function cpuinfo {
echo "`cat /proc/cpuinfo`"
}
function meminfo {
echo "`cat /proc/meminfo`"
}
function swap_create {
#script to create a swapspace
echo "`pvs`"
echo "Enter the pvs to create a VG:"
read a
read b
#To create a VG
echo "Enter the VG name to be created:"
read c
echo "`vgcreate $c $a $b`"
#To create a LV
echo "Enter the LV name and size of LV:"
read d
read s
echo "`lvcreate -L $s -n $d $c`"
#To check the LV
echo "`lsblk`"
#To create a SWAP space
if [ $? -eq 0 ]
then
   echo "creating a swap space"
   echo "`mkswap /dev/$c/$d`"
   echo "/dev/$c/$d          swap           swap    defaults        0 0" >> /etc/fstab
   echo "`swapon /dev/$c/$d`"
fi
echo "The size of swap space is:"
echo "`free -m`"
echo "`lsblk`"
#End
}
function showswap {
echo "`swapon -s`"
}
function killprocess {
`kill -15 $pid`
}
function activate_swap {
`swapon $e`
echo "check the swap space below"
showswap
}
function deactiveswap {
`swapoff $d`
showswap
}

#main script
choice=1
while [ ! -z $choice  ]
do
echo -n "
 ---------------------------------------------------
                      M E N U
 ---------------------------------------------------
1.CPU info 
2.MEM info
3.create a swap 
4.show the swap
5.kill the process of  the Particular PID provided
6.Activating the swap space
7.Deactivating the swap space
"

read -p "choose your choice from the above  or  press Enter key to exit:" choice
case $choice in
1)
 cpuinfo
;;
2)
 meminfo
;;
3) 
 swap_create
;;
4)
 showswap
;;
5) 
 echo "`ps -e`"
 read -p "Enter the PID from the above processes  to terminate:" pid
 killprocess
;;
6)
  echo "`lsblk`"
   showswap
   read -p "Enter the swap to be activated:" e
   activate_swap 
;;
7)
  echo "`lsblk`"
  showswap
  read -p "Enter the swap to be deactivated:" d
  deactiveswap 
;;

*)
  echo "Enter the valid option "
;;
esac
done 

