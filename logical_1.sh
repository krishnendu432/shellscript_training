#!/bin/bash
# This is the script how to use logical operator
echo "Enter your age:"
read age
echo "Enter your countery:"
read country
if [[ $age -ge 18 ]] && [[ $country == "India" ]] || [[ $country == "india" ]] || [[ $country == "INDIA" ]]
then
	echo "You can give vote."
else
	echo "You can't give vote."
fi

