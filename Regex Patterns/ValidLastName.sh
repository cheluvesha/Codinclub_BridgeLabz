#!bin/bash
read -p "Enter the last name:" lastName
patternForLastName="^[A-Z]{1}[a-z]{2,}$"
if [[ $lastName =~ $patternForLastName ]]
then
        echo Valid
else
        echo Invalid
fi
