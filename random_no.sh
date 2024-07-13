#!/bin/bash
#generate the random number between 0 to 8.
echo "Enter any random number between 0 to 32767 :"
read no
let no=$(( $RANDOM%$no +1 ))
echo "Random no: will display 0 to which value you have entered."
echo "Random number is : $no."


