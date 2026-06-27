#!/bin/bash

echo "=================================================================="


echo " Hello!! $USER - Todays date is : $(date) "
echo " Disk Usage (Used | Avail | Use%)"
df -h | grep " /$"  | awk '{printf "%-10s %-10s %-10s\n",  $3, $4, $5}'



echo "=================================================================="
