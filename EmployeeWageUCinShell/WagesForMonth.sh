#!/bin/bash -x
isparttime=1;
isfulltime=2;
totalsalary=0;
emprateperHr=20;
numworkingdays=20;
for (( day=1; day<=$numworkingdays; day++ ))
do
empcheck=$(( RANDOM%3 ))
        case $empcheck in
                $isfulltime)
                        empHrs=8
                                ;;
                $isparttime)
                        empHrs=4
                                ;;
                *)
                        empHrs=0
                                ;;
        esac
        salary=$(( $empHrs*$emprateperHr ));
        totalsalary=$(( $totalsalary+$salary ));
done
echo $salary
echo $totalsalary
