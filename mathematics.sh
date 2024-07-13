#!/bin/bash
# This is script for mathematics
echo "enter the first number :"
read a
echo "enter the second number :"
read b
let mul=$a*$b;
# For any arithmatics operations use "let" before the variable, other wise the variable will be treat as a string.

echo "multiplication of the two give numbers: $mul."
#Another way to perform the arithmatics operations
echo "subtration of the given numbers : $(($a-$b))."

