#!/bin/bash
# This script is how to fead the file content using for loop
File=/home/ubuntu/script/work
for read in $(cat $File)
do
 echo "The text is : $read"
done

