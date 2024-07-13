#!/bin/bash
# This script is for how to use continue statement
for i in 11 14 19 29 34 56
do
	let r=i%2
	if [[ $r -eq 0 ]]
	then
		continue
	fi
	echo "The odd number is : $i."
done

