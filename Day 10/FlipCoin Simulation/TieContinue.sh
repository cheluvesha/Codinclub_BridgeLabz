#!/bin/bash -x
Hcount=21;
Lcount=21;
H_count=0;
L_count=0;
flag=1;
if [ $Hcount -eq $Lcount ]
then
while [ $flag -eq 1 ]
do
guess=$(( RANDOM%2 ))
if [ $guess -eq 1 ]
then
	((H_count++))
else
	((L_count++))
fi
if [ $H_count -eq 2 ] || [ $L_count -eq 2 ]
then
	break; 
else
	continue;
fi
done
fi
if [ $H_count -gt $L_count ]
        then
                echo  "Heads won"
        else
                echo "Tails Won"
        fi








