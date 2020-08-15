#!/bin/bash -x
read -p "Enter a value for a: " a
read -p "Enter a value for b: " b
read -p "Enter a value for c: " c
declare -A computation
computation[1]=$(( $a+$b*$c ))
computation[2]=$(( $a*$b+$c ))
computation[3]=$(( $c+$a/$b ))
computation[4]=$(( $a%$b+$c ))
index=0;
for i in ${!computation[@]}
do
	array[((index++))]=${computation[$i]}
done
echo ${array[@]}
	
