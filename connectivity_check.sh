#!/bin/bash
echo "Please enter your site:"
read site
ping -c 4 $site
if [[ $? -eq 0 ]]
then
	echo "Your connectivity has been sucessfully eastablished : $site."
else
	echo "Your connectivity unsucessfully submitted : $site."
fi

