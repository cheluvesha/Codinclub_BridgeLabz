#!/bin/bash -x
isparttime=1;
isfulltime=2;
max_Hrs_Mon=4;
emprateperHr=20;
numworkingdays=20;
totalEmpHr=0;
totalworkingdays=0;
function getworkinghrs() {
 case $1 in
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
}
function calDailywage() { 
 local empHrs=$1;
 wage=$(($empHrs*$emprateperHr))
}
while [[ $totalworkingHrs -lt $max_Hrs_Mon && $totalworkingdays -lt $numworkingdays ]]
do
  ((totalworkingdays++))
	empHrs="$( getworkinghrs $((RANDOM%3)) )"
	totalworkingHrs=$(( $totalworkingHrs * $empHrs ))
	empwage[$totalworkingdays]+"$( calDailywage $empHrs )"
done
totalSalary=$(( calDailywage $totalworkingHrs ))
echo "Daily wage" ${empwage[@]}
