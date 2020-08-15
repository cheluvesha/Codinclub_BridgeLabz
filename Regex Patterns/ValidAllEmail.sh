#!/bin/bash
read -p "Enter your email id:" emailId
patternForEmailId="^[a-zA-Z]([.]{0,1}[a-zA-Z0-9]*){0,1}[@]{0,1}[a-z]{2,}([.]{0,1}[a-z]{3,})([.][a-bxy])?"
if [[ $emailId =~ $patternForEmailId ]]
        then
                echo Valid
        else
                echo Invalid
fi
