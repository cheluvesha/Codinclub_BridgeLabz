#!/bin/bash -x
read -p "Enter the number to print table: " n
base=2;
val=$(( 2**n ))
for (( i=1; i<=$(( $val/2 )); i++ ))
do 
	sum=$(( $base*$i ))
	echo $sum;
done
