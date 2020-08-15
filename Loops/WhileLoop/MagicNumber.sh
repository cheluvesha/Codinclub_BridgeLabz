#!/bin/bash -x 
read -p "Enter the number: " num
low=1;
high=100;
flag=0;
while [ $flag -eq 0 ]
do
	mid=$(($(($low + $high))/2))
	if [ $num -eq $mid ]
	then
		echo "Number is $mid"
		flag=1;
	elif [  $num -lt $mid ]
	then
		high=$(($mid-1))
	else
	low=$((mid+1))
	fi
done
