#!/bin/bash
#kernel=`uname -r`
kernel=$(uname -r)
os=$(uname) #uanme is a command and hence use perenthesis
#user=$USER
user=${USER} #USER is environment variable and hence user curly braces
#wd=$PWD
wd=${PWD}

echo "kernel version is $kernel Operating system is $os login name is $user and my pwd is $wd"
#End

