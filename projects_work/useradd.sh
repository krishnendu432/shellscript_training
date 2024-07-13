#!/bin/bash
# First check the user has the root previladge or not
if [[ "${UID}" -ne 0 ]]
then
	echo "Please ececute the script with the root access. Now the login user ID is: $UID."
	exit 1
fi
# User should at least provide one arguments as a user name
if [[ "$#" -lt 1 ]]
# '$#' is indicating how many arguments are passes
then
	echo "Provide at least one argument as a user name."
	echo "usage: ${0} user_name [comment] ...."
#'${0}' is showing the script name
	echo "Create a user with name USER_NAME and comments field of COMMENT."
	exit 1
fi
# Store 1st argument as a user name
USER_NAME="${1}"
#echo "User name is: $USER_NAME."
# Incase if user is giving multiple argument apart from user name all are treated as a comment. For that we are using 'shift' commend to shift 1 argument.
shift
COMMENT="${@}"
#echo "Comment is: $COMMENT."
#Generate random password. There is multiple way to generate random password from that you may use random bash variable or date commend with format
Password=$(date +%S%N)
#echo "You password is: $Password."
#Create User. Here 'c' used for comment and 'm' used for to create a home directory  
useradd -c "${COMMENT}" -m $USER_NAME
# Check the user has created or not. here '$?' has used to check the previous commend has sucessfully submitted or not. 
# Apart from '0' means the command has not sucessfully run. 
if [[ $? -ne 0 ]]
then
	echo "User has not created sucessfully:"
	exit 1
fi
# Set the password for the user
echo $Password |passwd -- stdin $USER_NAME
#Check if password has sucessfully set or not
if [[ $? -ne 0 ]]
then
        echo "User password could not be set:"
        exit 1
fi
# Force password change on first login. Here 'e' stands for password expire. 
passwd -e $USER_NAME
#Display the username, password and hostname of the system
echo
echo "Username is : $USER_NAME"
echo
echo "Password is: $Password."
echo
echo "Hostname is : $(hostname)."
