#!/bin/bash -x
read -p "Enter a value for a: " a
read -p "Enter a value for b: " b
read -p "Enter a value for c: " c
declare -A computation
computation[add]=$(( $a+$b*$c ))
computation[mul]=$(( $a*$b+$c ))
computation[div]=$(( $c+$a/$b ))
computation[mod]=$(( $a%$b+$c ))

