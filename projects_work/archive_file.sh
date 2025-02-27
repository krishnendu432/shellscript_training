#!/bin/bash
set -t
# Create variables
#Path of the file
Base=/home/ubuntu/script
# Need to be clear the files which are more than 10 days
Days=10
#How much depth it will search the file
Depth=1
Run=0
#Search the 
if [[ ! -d $Base ]]
then
	echo "The directory is not available: $Base."
	exit 1
fi
if [[ ! -d $Base/archive ]]
then
	mkdir $Base/archive
fi
#Find those files which are greater than 5KB 
for i in 'find $Base -maxdepth $Depth -type f -size +5K'
do
	if [[ $Run -eq 0 ]]
	then
		gzip $i || exit 1
		mv $i.gz $Base/archive || exit 1
	fi
done


