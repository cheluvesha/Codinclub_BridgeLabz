#!/bin/bash -x
function palindrome() {
s=0 
rev=""
temp=$num 
while [ $num -gt 0 ] 
do
    s=$(( $num % 10 ))   
    num=$(( $num / 10 ))
#to store previous number and current digit in reverse  
    rev=$( echo ${rev}${s} )  
done
if [ $temp -eq $rev ]; 
then
    echo "Number is palindrome"
else
    echo "Number is NOT palindrome"
fi
}
for (( i=1; i<=2; i++ ))
do
read -p "Enter a number to check: " num
palindrome $num
done
