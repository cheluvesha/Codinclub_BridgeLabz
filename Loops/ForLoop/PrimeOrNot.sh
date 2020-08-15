#!/bin/bash -x
read -p "Enter the number to check: " n
if [ $n -eq 1 ]
then
        echo "$n is not a prime number"
        exit
else
        for (( i=2; i<=n/2; i++ ))
        do
                if [ $((n%i)) -eq 0 ]
                then
                echo "$n is not a prime number."
                exit
                fi
        done
fi
echo "$n is a prime number."
