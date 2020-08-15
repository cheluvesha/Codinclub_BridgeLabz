#!/bin/bash
read -p "Enter the range to flip: " num
val=1;
count_head=0;
count_tail=0;
while [ $val -le $num ]
do
guess=$(( RANDOM% 2))
if [ $guess -eq 1 ]
then
        ((count_head++))
else
        ((count_tail++))
fi
((val++))
done
echo $count_head
echo $count_tail
Head_Percen=`echo "$count_head*100/$num" | bc -l`
Tail_Percen=`echo "$count_tail*100/$num" | bc -l`
echo $Head_Percen
echo $Tail_Percen
