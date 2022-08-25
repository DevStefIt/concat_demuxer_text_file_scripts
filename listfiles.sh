#!/bin/bash

# REM 2020 - Dev Stef

# The first command line parameter is the folder where the files are.

# Check if the first command line parameter is set.
# If not, set the home Videos folder as the default.
if [ -z "$1" ]
then
	folder="$HOME/Videos"
else
	folder="$1"
fi

# Check if the given folder exists.
# If it doesn't exist, exit with an error code.
if [ ! -d "$folder" ]
then
	echo The provided folder does not exist.
	exit 1
fi

# The second command line parameter is the files extension we want to get.

# Check if the second command line parameter is set.
# If not, set all the types of files (*) as the default.
if [ -z "$2" ]
then
	ext="*"
else
	ext=$2
fi

# Set the proper command and create the text file with all the containing file in it.
# To get the file: listfiles.sh FOLDER EXT > fileslist.txt
for f in "$folder"/*.$ext
do 
	echo "file '$f'"
done
