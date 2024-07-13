#!/bin/bash
# This script is to check the file and directory is available or not and if it is not available then crete your file
echo "Please enter you file path."
read Filepath
#Filepath=/home/ubuntu/script/data.csv
if [[ -f $Filepath ]]
then
	echo "File available."
else
	echo "File is not available."
	echo "Creating File on your giving path."
	touch $Filepath
	exit 1
fi

#echo "Please enter you directory path."
#read Dirpath
#Filepath=/home/ubuntu/script/data.csv
#if [[ -d $Direpath ]]
#then
 #       echo "Directory is available."
#else
 #       echo "Directory is not available."
#	mkdir $Dirpath
 #       exit
#fi

