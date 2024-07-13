#!/bin/bash
set -x
# This script is for how to read csv file through while loop

while IFS=" " read id name phone age
# here IFS means Internal Field Seperator, it may be "," or ":" or " "as per your choice. Only you have identyfy it in IFS as well as use the same IFS in csv file.
do
	echo "ID is: $id."
	echo "Name is: $name."
	echo "Phone no is: $phone."
	echo "Age is: $age."
done</home/ubuntu/script/data.csv

