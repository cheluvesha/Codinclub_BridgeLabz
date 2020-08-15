#!/bin/bash
flag=1;
Hcount=0;
Lcount=0;
while [ $flag -eq 1 ]
do
guess=$(( RANDOM% 2))
if [ $guess -eq 1 ]
then
        Hcount=`expr $Lcount + 1`
else
        Lcount=`expr $Lcount + 1`
fi
        if [[ $Hcount -eq 21 ]] || [[ $Lcount -eq 21 ]]
        then
        break;
        else
        continue;
        fi
done
if [[ $Hcount -gt $Lcount ]]
then
	echo "Heads won this many times: "$Hcount
elif [[ $Lcount -gt $Hcount ]]
then
	echo "Tails won this many times: "$Lcount 
else
	echo "It's a tie between them "
fi 
