#!/bin/bash
read -p "Enter a number to print Harmonic value: " n
harmonic=0;
for (( i=1; i<=n; i++ ))
do
	harmonic=$(( $harmonic+$(( 1/$i | bc -l )) ))
done
echo $harmonic;


