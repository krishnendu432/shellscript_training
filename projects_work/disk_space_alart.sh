#! /bin/bash
set -x
# This script is to check the disk uses of a system.
# Here df command used to check the different disk volumn. From that we have checked the sda2 disk volumn. From the output delete the '%' sign so used tr command. 
# After that we required only 5th column to take particular disk uses value. So used awk command. 
DU=$(df | grep "sda2" | tr -d % | awk '{print $5}')
TH=80
if [[ $DU -gt $TH ]]
then
	echo "Disk utilization is very high for the system. -----$DU %. Please take necessary action."
else
	echo "Available disk space are there. Utilization of disk space is $DU %."
fi

