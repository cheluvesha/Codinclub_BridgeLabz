#!/bin/bash
function find_min_max() {
for ((i = 0; i<5; i++)) 
do
      
    for((j = 0; j<5-i-1; j++)) 
    do
      
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ] 
        then
            # swap 
            temp=${arr[j]} 
            arr[$j]=${arr[$((j+1))]}   
            arr[$((j+1))]=$temp 
        fi
    done
done
echo ${arr[0+1]} 
echo ${arr[n-2]}
}
arr=(10 8 20 100 12) 
find_min_max


