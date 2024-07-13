#!/bin/bash
# This is a type of function where we will passes the arguments
echo "Please enter your choice here :"
echo "Press a for addition :"
echo "Press b for substraction :"
echo "Press c for multiplicaction :"
echo "Press d for devition :"
read choice
case choice in
	a) result=$(add 10 20)
	echo "The addition of the two digits is : $result."
	;;
	b) result=$(sub 69 43)
	echo "The subtraction of the two digits is : $result"
	;;
	c) result=$(mul 76 6)
	echo "The multiplication of the two digits is : $result"
	;;
	d) result=$(div 88 4)
	echo "The devision of the two digits is : $result"
	;;
	*) echo "It's an invalid input."
	;;
esac
function add()
{
	local num1=$1
	local num2=$2
        let result=($num1+$num2)
	echo "$result"
}

sub()
{
        local num1=$1
        local num2=$2
        let result=($num1-$num2)
	echo "result"
	#echo "The subtraction of the two digits is : $sub"
}
mul()
{
        local num1=$1
        local num2=$2
        let result=($num1*$num2)
	#echo "The multiplication of the two digits is : $mul"
}
div()
{
        local num1=$1
        local num2=$2
        let result=($num1/$num2)
	#echo "The division of the two digits is : $div"
}

