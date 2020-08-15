function singlet() {
read -p "Enter the range to flip: " num
val=1;
count_head=0;
count_tail=0;
Key=0;
declare -A HeadTail
while [ $val -le $num ]
do
guess=$(( RANDOM% 2))
if [ $guess -eq 1 ]
then
        array[((Key++))]="H"
        ((count_head++))
else
        array[((Key++))]="T"
        ((count_tail++))
fi
((val++))
done
for((i=0;i<${#array[@]};i++))
do
HeadTail[$i]=${array[$i]};
done

Head_Percen=`echo "$count_head*100/$num" | bc -l`
Tail_Percen=`echo "$count_tail*100/$num" | bc -l`
declare -A arr
arr[0]=$Head_Percen;
arr[1]=$Tail_Percen;

echo ${arr[@]}
declare -A dic
for ((i=0; i<${#arr[@]}; i++))
do
dic[$i]=${arr[$i]};
done
echo ${dic[@]}

echo "The MAX winning Combination based on Percentage:" "${dic[@]}" | tr " " "\n" | sort -nk1 | tail -1
}


function doublet() {
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

echo ${PerStore[@]}
echo "The MAX winning combinaton on the basis of Percentage is: "  "${PerStore[@]}" | tr " " "\n" | sort -nk1 | tail -1

}
function triplet() {
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
echo ${arr[@]}

declare -A Tripple
for ((i=0;i<${#arr[@]};i++))
do
Tripple[$i]=${arr[$i]};
done

HHH_Percen=`echo "$HHH*100/$num" | bc -l`
TTT_Percen=`echo "$TTT*100/$num" | bc -l`
HHT_Percen=`echo "$HHT*100/$num" | bc -l`
TTH_Percen=`echo "$TTH*100/$num" | bc -l`
HTH_Percen=`echo "$HTH*100/$num" | bc -l`
THT_Percen=`echo "$THT*100/$num" | bc -l`
HTT_Percen=`echo "$HTT*100/$num" | bc -l`
THH_Percen=`echo "$THH*100/$num" | bc -l`

declare -A PerStore
PerStore[TTH]=$HHH_Percen;
PerStore[TTT]=$TTT_Percen;
PerStore[HHT]=$HHT_Percen;
PerStore[TTH]=$TTH_Percen;
PerStore[HTH]=$HTH_Percen;
PerStore[THT]=$THT_Percen;
PerStore[HTT]=$HTT_Percen;
PerStore[THH]=$THH_Percen;
for i in ${!PerStore[@]}
do
echo ":"${PerStore[$i]}
done

echo "The MAX Winning combination on the basis of Percentage: " "${PerStore[@]}" | tr " " "\n" | sort -nk1 | tail -1

}
singlet
doublet
triplet
