#!/bin/bash
# This script is for how to use for loop in array 
myArray=(15 6 1889 june thursday 15.6)
Length=${#myArray[*]}
for(( i=0;i<$Length;i++ ))
do
	echo "The content of array is :${myArray[$i]}."
done

