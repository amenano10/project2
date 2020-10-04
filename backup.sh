#!/usr/bin/bash

# This bash script is supposed to be used to back up my home directory.
# I couldn't figure out how to actually utilize the "tar" command, 
# since I was confusing on what I needed to set as the path. 
# No iteration of what made sense for my computer would work.
# It almost seems like it worked once I used the "2> /dev/null"

function backup {

	if [ -z $1 ]; then
	    user=$(whoami)
	else
	    if [ ! -d "/home/$1" ]; then
		echo "Requested $1 user home directory doesn't exist."
		exit 1
	    fi
	    user=$1
	fi

	input=/home/$user
	output=/tmp/${user}_home_$(date +%Y-%m-%d_%H%M%S).tar.gz

	function total_files {
	    find $1 | wc -l
	}

	function total_directories {
	    find $1 | wc -l
	}

	function total_archived_directories {
	    tar -tzf $1 | grep /$ | wc -l
	}

	function total_archived_files {
	    tar -tzf $1 | grep -v /$ | wc -l
	}

	tar -czf $output $input 2> /dev/null

	src_files=$( total_files $input )
	src_directories=$( total_directories $input )

	arch_files=$( total_archived_files $output )
	arch_directories=$( total_archived_directories $output )

	echo "######### $user #########"
	echo "Files to be included: $src_files"
	echo "Directories to be included: $src_directories"
	echo "Files archived: $arch_files"
	echo "Directories archived: $arch_directories"

	if [ $src_files -eq $arch_files ]; then
	    echo "Backup of $input completed!"
	    echo "Details about the output backup file: "
	    ls -l $output
	else
	    echo "Backup of $nput failed!"
	fi
}

for directory in $*; do
    backup $directory
done;
