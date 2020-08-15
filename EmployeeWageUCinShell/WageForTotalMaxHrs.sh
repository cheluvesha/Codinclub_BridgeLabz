#!/bin/bash -x
isparttime=1;
isfulltime=2;
max_Hrs_Mon=10;
emprateperHr=20;
numworkingdays=20;
totalEmpHr=0;
totalworkingdays=0;
while [[ $totalEmpHr -lt $max_Hrs_Mon &&
	 $totalworkingdays -lt $numworkingdays ]]
do
  ((totalworkingdays++))
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
	totalEmpHr=$(($totalEmpHr*$empHrs))
done
totalSalary=$(($totalEmpHr*$emprateperHr))

