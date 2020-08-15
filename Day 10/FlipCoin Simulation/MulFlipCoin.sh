#!/bin/bash -x
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
echo "Number of times Heads won: "$count_head
echo "Number of times Tails won: "$count_tail 
