function degCtodegF() {
out=`expr $(( $in * 9/5 )) + 32`
echo $out;
}
function degFtodegC() {
out=$(( `expr $in - 32` * 5/9 ))
echo $out;
}
read -p "Enter 1 for DegF_to_DegC conversion or Enter 2 for DegC_to_DegF conversion: " val
read -p "Enter a input to perform conversion: " in
out=0;
freezinCel=0;
freezinFar=32;
boilinCel=100;
boilinFar=212;
case $val in
        1)
                if [ $in -ge $freezinFar ] && [ $in -le $boilinFar ]
                then
                degFtodegC $in
                fi
                        ;;
        2)
                if [ $in -ge $freezinCel ] && [ $in -le $boilinCel ]
                then
                degCtodegF $in
                fi
                        ;;
Esac
