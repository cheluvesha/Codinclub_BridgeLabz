#!/bin/bash
n=10;
function arraygen() {
count=0
for (( i=1; i<=$n; i++ ))
do
low=100
hig=999
random[((count++))]=$(( $low + RANDOM%(1+$hig-$low)))
done
echo ${random[@]}
}
function find_min_max() {
for ((i = 0; i<n; i++))
do

    for((j = 0; j<n-i-1; j++))
    do

        if [ ${random[j]} -gt ${random[$((j+1))]} ]
        then
            # swap
            temp=${random[j]}
            random[$j]=${random[$((j+1))]}
            random[$((j+1))]=$temp
        fi
    done
done
	echo "Second smallest in the array: " ${random[0+1]}
	echo "Second largest in the array: " ${random[n-2]}
}
n=10;
arraygen
find_min_max
