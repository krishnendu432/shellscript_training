#!/bin/bash
# This script is for how to use shifting
# Here suppose user name is Kamal Das so 1st and 2nd argument both are user name. Hence used $1 and $2 to retrive the full name
echo "To create a user provide user name : $1 $2."
# Here we used shift two time because 1st and 2nd both are the arguments are belong from user name. So from 3rd arguments to till end will belong a single argument.
shift
shift
echo "Please provide user's description : $@."

