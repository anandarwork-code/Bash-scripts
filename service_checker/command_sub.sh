#!/bin/bash


#check whether the given argument is valid 

if [ -z $1 ]; then 
	echo " invalid input "
	exit 1
fi 

#check whether the service name is valid 

systemctl list-unit-files | grep -q "^$1.service" 

if [ "$?" != 0 ]; then 
	echo "The given service name is invalid "
	exit 1 
fi 

service=$(systemctl is-active $1)

# check wheather the given service is active 

if [ $service = "active" ]; then 
	echo " $1 is active "
else 
        echo " $1 is not active "
fi 	
