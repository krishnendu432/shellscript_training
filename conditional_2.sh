#!/bin/bash
# This script is for case statement.
echo "Enter an input from the given option :"
echo "Press a for see the current system date."
echo "Press b for see the current path of the directory."
echo "Press c for see all the files in the present directory."
echo "Press d for see the system hostname."
echo "Press e for see the current user of the system account."
read choice
case $choice in
	a) echo "Today's date is :"
		date;;
	b)echo "The current path is:"
		pwd;;
	c)ls -l;;
	d)echo "The name of the system is:"
		hostname;;
	e)whoami;;
	*)echo "You have entered wrong input."
esac
