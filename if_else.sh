#!/usr/bin/bash

#This code block is for testing conditional statements
#This simply tests to see if number a is less than number b

num_a=800
num_b=200

if [ $num_a -lt $num_b ]; then
	echo "$num_a is less than $num_b!"
else
	echo "$num_a is greater than $num_b!"
fi 
