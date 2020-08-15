#!/bin/bash
function prime() {
if [ $num -eq 1 ]
  then
        echo $num "is neither a prime number nor a composite"
        exit
else
for(( i=2; i<=$num/2; i++ ))
do
         if [ $(( $num%i )) -eq 0 ]
        then
        echo "$num is not a prime number."
        break
        fi
done
palindrome $num
fi
}
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
    echo "Number is a palindrome"
else
    echo "Number is NOT a palindrome"
fi
for(( i=2; i<=$rev/2; i++ ))
do
         if [ $(( $rev%i )) -eq 0 ]
        then
        echo "$rev is not a prime number."
        exit
        fi
done
 echo "$rev is a prime number"
}
read -p "Enter the number to check: " num
prime $num
