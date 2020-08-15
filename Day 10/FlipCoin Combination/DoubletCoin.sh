read -p "Enter the range to flip: " num
val=1;
TailTail=0;
HeadHead=0;
HeadTail=0;
TailHead=0;
index=0;
while [ $val -le $num ]
do
guess=$(( 1+RANDOM% 4))
if [ $guess -eq 1 ]
then
        arr[((index++))]="HH";
        ((HeadHead++));
elif [ $guess -eq 2 ]
then
        arr[((index++))]="TT";
        ((TailTail++));
elif [ $guess -eq 3 ]
then    arr[((index++))]="HT";
        ((HeadTail++));
else
        arr[((index++))]="TH";
        ((TailHead++))
fi
((val++))
done
echo ${arr[@]}

declare -A Doublet
for ((i=0;i<${#arr[@]};i++))
do
Doublet[$i]=${arr[$i]};
done

HH_Percen=`echo "$HeadHead*100/$num" | bc -l`
TT_Percen=`echo "$TailTail*100/$num" | bc -l`
HL_Percen=`echo "$HeadTail*100/$num" | bc -l`
TH_Percen=`echo "$TailHead*100/$num" | bc -l`

declare -A PerStore
PerStore[HH]=$HH_Percen;
PerStore[TT]=$TT_Percen;
PerStore[HL]=$HL_Percen;
PerStore[TH]=$TH_Percen;

for i in ${!PerStore[@]}
do
echo ${PerStore[$i]}
done
