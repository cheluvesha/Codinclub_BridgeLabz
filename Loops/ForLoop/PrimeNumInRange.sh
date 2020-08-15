#!/bin/bash -x 
read -p "Enter the number: " M
for (( i=2; i <= $M; i++ ))
do
p=0
	for (( j=2; j <= $i-1; j++ ))
	do
		if [ `expr $i % $j` -eq 0 ]
		then
		p=1
		break
		fi
	done
if [ `expr $p` -eq 0 ]
then
echo $i is a prime number
fi
done









