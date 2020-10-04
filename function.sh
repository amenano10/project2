#!/usr/bin/bash

# This bash script is for grouping a number of different commands into a single command.

function user_details { 
	echo "User name: $(whoami)" 
	echo "Home Directory: $HOME"
}

user_details
user_details
