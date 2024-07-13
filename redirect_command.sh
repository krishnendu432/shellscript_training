#!/bin/bash
# This script is to check how to use redirect command
echo "Enter your site name :."
read site
ping -c 4 $site >> log_details.txt
#site=www.gmail.com
#ping -c 4 $site >> log_details.txt




