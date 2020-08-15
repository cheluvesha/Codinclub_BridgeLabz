#!/bin/bash -x
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
	if [[ $Hcount -eq 11 ]] && [[ $Lcount -eq 11 ]]
	then
	break;
	else
	continue; 	
	fi
done
echo $Hcount $Lcount

