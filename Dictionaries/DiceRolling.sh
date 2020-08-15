#!/bin/bash -x
count=0;
max_val=0;
min=10;
min_val=0;

declare -A roll_records
for ((i=1;i<=6;i++))
do
	roll_records[$i]=0
done
while [ ! $count -eq 10 ]
do
	roll_a_dice=$(( 1 + RANDOM%6 ))
	count=${roll_records[$roll_a_dice]}
	((count++))
	roll_records[$roll_a_dice]=$count
done
count=0
for i in "${!roll_records[@]}"
do
	if [ $i -eq 1 ]
	then
	min=${roll_records[$i]}
	min_val=$i
	max_val=$i
	elif [ $min -gt ${roll_records[$i]} ]
	then 
		min=${roll_records[$i]}
		min_val=$i
	elif [ 10 -eq ${roll_records[$i]} ]
	then 
		max_val=$i
	fi
done

for key in "${!roll_records[@]}"
do
	echo $key"-" ${roll_records[$key]}
done
	echo "the number reached minimum time is" :$min_val
	echo "the number reached maximum time is" :$max_val
