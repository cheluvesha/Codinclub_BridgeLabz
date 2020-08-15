#!/bin/bash -x
money=100;
bet=1;
win=0;
loss=0;
count_bet=0;
goal=0;
total=$money;
while [ $money -ge 0 ] && [ $money -le 200 ]
do
money=$(( $money - $bet ))
guess=$(( RANDOM%2 ));
if [ $guess -eq 1 ]
then
        win=`expr $win + 1`
        count_bet=`expr $count_bet + 1`
        money=`expr $money + 1`
else
        loss=`expr $loss + 1`
    count_bet=`expr $count_bet + 1`
fi
done
echo $win "Number of times won"
echo $loss "Number of times loss"
echo $count_bet "Number of times bet made"
