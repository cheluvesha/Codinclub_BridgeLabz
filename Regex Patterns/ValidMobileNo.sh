#!/bin/bash
COUNTRY_CODE=91
read -p "Enter your mobile number:" mobileNumber
patternForMobileNumber="^$COUNTRY_CODE[ ]{0,1}[6-9]{1}[0-9]{9}"
if [[ $mobileNumber =~ $patternForMobileNumber ]]
        then
                echo Valid
        else
                echo Invalid
fi
