#!/bin/bash
# The script is to check the user is root or normal user
if [[ $UID -eq 0 ]]
then
	echo "The user is root user $UID."
else
	echo "The is a normal user and the UID of the user is $UID."
fi


