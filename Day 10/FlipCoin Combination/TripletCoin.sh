read -p "Enter the range to flip: " num
val=1;
TTT=0;
HHH=0;
HHT=0;
TTH=0;
HTH=0;
THT=0;
HTT=0;
THH=0;
index=0;
while [ $val -le $num ]
do
guess=$(( 1+RANDOM% 8))
if [ $guess -eq 1 ]
then
        arr[((index++))]="HHH";
        ((HHH++));
elif [ $guess -eq 2 ]
then
        arr[((index++))]="TTT";
        ((TTT++));
elif [ $guess -eq 3 ]
then
        arr[((index++))]="HHT";
        ((HHT++));
elif [ $guess -eq 4 ]
then
        arr[((index++))]="TTH";
        ((TTH++));

elif [ $guess -eq 5 ]
then    arr[((index++))]="THH";
        ((THH++));
elif [ $guess -eq 6 ]
then
        arr[((index++))]="HTT";
        ((HTT++));
elif [ $guess -eq 7 ]
then
        arr[((index++))]="HTH";
        ((HTH++));

else
        arr[((index++))]="THT";
        ((THT++))
fi
((val++))
done
HHH_Percen=`echo "$HHH*100/$num" | bc -l`
TTT_Percen=`echo "$TTT*100/$num" | bc -l`
HHT_Percen=`echo "$HHT*100/$num" | bc -l`
TTH_Percen=`echo "$TTH*100/$num" | bc -l`
HTH_Percen=`echo "$HTH*100/$num" | bc -l`
THT_Percen=`echo "$THT*100/$num" | bc -l`
HTT_Percen=`echo "$HTT*100/$num" | bc -l`
THH_Percen=`echo "$THH*100/$num" | bc -l`
