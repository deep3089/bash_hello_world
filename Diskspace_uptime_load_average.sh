#!/bin/bash

#Total Memory
echo " "

df -h | awk 'FNR == 2 {print "Total Memory: "$2"\tUsed size: "$3}'
echo " "

# uptime

echo "uptime:"
uptime|awk '{print $1}'

echo " "

# load average 
load_average=`top -b | head -1 | cut -d "," -f3`
echo $load_average
