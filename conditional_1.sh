#!/bin/bash
#This script is for conditional statement
echo "Enter the marks for the 1st subject :"
read sub1
echo "Enter the marks for the 2nd subject :"
read  sub2
echo "Enter the marks for the 3rd subject :"
read sub3

let marks=$sub1+$sub2+$sub3

if [[ $marks -ge 180 ]]
then
	echo "The student has passed the exam in 1st devision. Total marks is : $marks."
elif [[ $marks -ge 150 ]]
then
	echo "The student has passed the exam in 2nd devision. Total marks is : $marks."
elif [[ $marks -ge 120 ]]
then
	echo "The student has passed the exam in 3rd devision. Total marks is : $marks."
else
	echo "The student has failed the exam. Total marks is : $marks."
fi


