# !/bin/bash
# This is the script for how to create array and how to fetch value from an array
array1=("Bangalore" "Kolkata" 731204 Chennai 65.5)
# If we required to fetch particular value from array
  
echo "The 2nd item of the array is: ${array1[1]}."

# If we required to fetch all the values from an array

echo "Find the details of the array : ${array1[*]}."

# Find the length of the array 
echo "The length of the array is ${#array1[*]}."

# How to get the specific range range of value from array

echo "The index from 2 to 4 is : ${array1[*]:2:4}."

# How to add the value in the existing array
array1+=(Delhi Hyderabad 560067 Ranchi)
echo "The array value after adition : ${array1[*]}."




