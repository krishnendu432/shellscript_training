#!/bin/bash
# How to store values in array as a pairs
declare -A myEmp
myEmp=([name]=Santu [age]=34 [city]=Mumbai)
echo "The name of the employee is : ${myEmp[name]}."
 
echo "The age of the employee is : ${myEmp[age]}."

echo "The country of the employee is : ${myEmp[city]}."
