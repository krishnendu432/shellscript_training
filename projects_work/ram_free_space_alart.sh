#!/bin/bash
#This script is for to check the ram space and crete an alart if it is less than 500 MB
# free -mt=To check the free space in mb, now we need the total free space so used grep command. Now we need to be print only colum 4. So used awk command. 

Free_Space=$(free -mt | grep Total | awk '{print $4}')
TH=500
if [[ $Free_Space -lt TH ]]
then
	# echo "Ram space is less. $Free_Space."
        "Ram space is less. $Free_Space." >> log_space.txt
else
	# echo "Ram space is sufficient. $Free_Space."
	"Ram space is sufficient. $Free_Space." >> log_space.txt

fi


