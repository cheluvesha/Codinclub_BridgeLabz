#!/bin/bash
read -p "Enter your password:" password
patternForPassword="^.{8,}"
patternForPassword2="[[:upper:]]+"
patternForPassword3="[0-9]{1,}"
patternForPassword4="^[0-9A-Za-z]*[!@#$%&][A-Za-z0-9]*$"
if [[ $password =~ $patternForPassword ]]
then
        if [[ $password =~ $patternForPassword2 ]]
        then
                if [[ $password =~ $patternForPassword3 ]]
                then
                        if [[ $password =~ $patternForPassword4 ]]
                        then
                                echo Valid
                        else
                                        echo "Invalid password. password should contain exactly one special character"
                        fi
                        else
                                echo "Invalid password. password should at least one numeric character"
                        fi
                else
                        echo "Invalid password. password should contain at least one Uppercase alphabet"
                fi
else
        echo "Invalid password. password should be of minimum 8 characters"
fi
