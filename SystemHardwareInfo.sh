#!/bin/bash
#Auther_name - deepak patel
# To check cpu information on system

cpu_info=`cat /proc/cpuinfo | grep "^model name" | cut -d ":" -f2 | sed -n "1p"`
echo "cpu_info= $cpu_info"

#kerel information
echo " "

kernal_release=`uname -r`
os_name=`uname -o`
kernal_version=`uname -v`

echo "kernal_release- $kernal_release "
echo " "
echo "os_name- $os_name "
echo " "
echo "kernal_version- $kernal_version "
echo " "

#hostname
echo "hostname = `hostname`"
echo "ip address = `hostname -i`"
# Memory 

echo "Memory = `free -h | grep ^Mem |tr -s '  ' | cut -d ' ' -f2`"

echo " "
#Total installed s/w in centsos

echo "Total Insalled s/w = `yum list installed | wc -c` 2>/dev/nul1`
echo " "
