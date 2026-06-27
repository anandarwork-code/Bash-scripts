#!/bin/bash
set -e


echo "=================================================================="


echo " Hello!! $USER - Todays date is : $(date) "
echo " Disk Usage (Used | Avail | Use%)"
DISK=$(df -h | grep " /$")
if [ -z "$DISK" ]; then
    echo "Error: could not get disk info"
    exit 1
fi 
       echo "$DISK " | awk '{printf "%-10s %-10s %-10s\n",  $3, $4, $5}'


echo "=================================================================="
