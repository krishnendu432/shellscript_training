#!/bin/bash
# The script is for how to use infinite while loop
# This type of script is usage in monitoring the system
while true
do
	echo "This is the summarize of disk usage the ubuntu system."
	df -HT
	sleep 3s
done

