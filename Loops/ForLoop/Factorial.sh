#!/bin/bash -x
read -p "Enter the number to find factorial: " n
sum=1;
for (( i=1; i<=n; i++ ))
do
	sum=$(( $sum*$i ))
done
echo $sum
