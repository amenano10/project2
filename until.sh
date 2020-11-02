#!/usr/bin/bash

#An until loop does the opposite of what a while loop does. The code will keep running until the statement becomes true.
#In this case the code will run two times.

counter=6
until [ $counter -lt 3 ]; do
	let counter-=1
	echo $counter
done
