#!/usr/bin/bash/

# This bash script is supposed to be used to back up my home directory.
# I couldn't figure out how to actually utilize the "tar" command, 
# since I was confusing on what I needed to set as the path. 
# No iteration of what made sense for my computer would work.
# It almost seems like it worked once I used the "2> /dev/null"

user=$(whoami)
input=/home/$user
output=/tmp/${user}_home_$(date +%Y-%m-%d-%H%M%S).tar.gz

# The function total_files reports a total number of files for a given directory
function total_files {
	find $1 | wc -1
}

# The function total_directories reports a total number of directories
# for a given directory.
function total_directories {
	find $1 | wc -1
}

function total_archived_directories {
	tar -tzf $1 | grep /$ | wc -1
}

function total_archived_files {
	tar -tzf $1 | grep -v /$ | wc -1
}


tar -czf $output $input 2> /dev/null

src_files=$( total_files $input )
src_directories=$( total_directories $input )

arch_files=$( total_archived_files $output )
arch_directories=$( total_archived_directories $output )

echo "Files to be included: $src_files"
echo "Directories to be included: $src_directories"
echo "Files to be archived: $arch_files"
echo "Directories to be archived: $arch_directories"

if[ $src_files -eq $arch_files ]; then
	echo "Backup of $input completed!"
	echo "Details about the output backup file: "
	ls -1 $output
else
	echo "Backup of $input failed!"
fi
