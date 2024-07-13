#!/bin/bash
no=6
for i in 12 15 34 6 87
do
	if [[ $no -eq $i ]]
	then
		echo "The no: has match: $i ."
		break
	fi
	echo "The no: is : $i."
done

