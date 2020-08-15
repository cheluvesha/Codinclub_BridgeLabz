#!/bin/bash
function store() {
count=0;
echo "enter an array  of elements:"
for (( i=0; i<5; i++ ))
do 
read  num
arr[count++]=$num;
done
}
function find_triplet() {
found=true;
n=${#arr[@]}
for(( i=0; i<$(( n-2 )); i++ ))
do
	for(( j=$i+1; j<$(( n-1 )); j++ ))
	do
		for(( k=$j+1; k<$n; k++ ))
		do
		if [ $(( ${arr[$i]} + ${arr[$j]} + ${arr[$k]} )) -eq 0 ]
		then
			echo ${arr[$i]} ${arr[$j]} ${arr[$k]}
		found=true;
		fi
		done
	done
done
if [ $found ==  false ]
then
	echo " Not exist in the array "
fi
}

store
find_triplet
