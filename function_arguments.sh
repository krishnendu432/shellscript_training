#!/bin/bash
# No we will check how to use exit statement in shell script
if [[ $# -eq 0 ]]
then
	echo "Provide atleast one arguments."
	break
fi

# how to print the runtime arguments
echo "The first argument is : $1 ."
echo "The second argument is : $2 ."
# To display the total content of the arguments
echo "To display all the arguments : $@."
# To get the total number of arguments
echo "To get all the the arguments : $#."

for file in $@
do
	echo "copying file from : $file."
done

