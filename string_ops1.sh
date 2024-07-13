#!/bin/bash
# The script is for different operations for string
myString="I am working for south region of India in Landmark Group."
# Find the length of a string
echo "The length of the string is: ${#myString}"
# Convert the string to upper case letter
echo "The upper case of the string is.....:${myString^^}"

# Convert the string to lower case letter
echo "The lower case of the string is.....:${myString,,}"

# How to replace the string
myString=${myString/Landmark/LandMark}
echo "After changed the string, new string is....:${myString}"

#How to do slice of a string
echo "The slice of the string is....:${myString:42:14}"





