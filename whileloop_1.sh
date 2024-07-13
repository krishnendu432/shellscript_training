#!/bin/bash
# This script is for how to use while loop
set -x
count=0
num=10
while [[ $count -le $num ]]
do
	echo "The increasing number is : $count"
	let count++
done

# This script is for how to use until loop
a=10
until [[ $a -lt 0 ]]
do
	echo "The decreasing number is: $a."
	let a--
done

