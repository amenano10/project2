#!/usr/bin/bash

#All this code does is execute a while loop
#This while loop will only run one time
#Raising and or lowering the counter would alter this
counter=0
while [ $counter -lt 3 ]; do
	let counter+=1
	echo $counter
done
