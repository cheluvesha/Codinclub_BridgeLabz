#!/bin/bash -x
isPartTime=1;
isFullTime=2;
empRatePerHr=20;
randomCheck=$((RANDOM%3));
if [ $isFullTime -eq $randomCheck ]
then
	empHrs=8;
elif [ $isPartTime -eq $randomCheck ]
then
 	empHrs=4;
else
	salary=0;
fi
salary=$salary=$(($empHrs*$empRatePerHr));
