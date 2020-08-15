#!/bin/bash
function store() {
count=0; 
	for(( i=0; i<100; i++ ))
	do
		arr[count++]=$i;
	done
}

function find_double() {
coun=0;
	for(( i=0; i<${#arr[@]}; i++ ))
	do
		if [ $((${arr[$i]} % 11)) -eq 0 ] && [ $((${arr[$i]} / 11)) -ne 0 ] 
		then
			new_arr[coun++]=${arr[$i]};
		fi
	done
}
store
find_double
echo ${new_arr[@]}
