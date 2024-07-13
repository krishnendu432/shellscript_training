#! /bin/bash
# This is shell script for uses of variables
name="Santu"
age=34
city="Bangalore"
echo "My name is $name. I am $age years old. I am living in $city."
# Variable value can be change
name="Krishnendu"
echo "My name is $name."
Hostname=$(hostname)
IP=$(ifconfig)
# variable to store the output as a command
echo "The same of the system is $Hostname."
echo "The ip of the system is \n $IP."
# How to use constant variable. No body can't change the variable value until end of the script
readonly nationality="Indian"
echo "I am an $nationality."



