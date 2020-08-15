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
