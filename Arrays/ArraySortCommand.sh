#!/bin/bash
n=10;
function arraygen() {
count=0
for (( i=1; i<=$n; i++ ))
do
low=10
hig=99
random[((count++))]=$(( $low + RANDOM%(1+$hig-$low)))
done
echo ${random[@]}
}
function find_min_max() {
	echo Second_largest=$(printf '%s\n' "${random[@]}" | sort -n | tail -2 | head -1)
	echo Second_smallest=$(printf '%s\n' "${random[@]}" | sort -n | head -2 | tail -1)

}
n=10;
arraygen
find_min_max

