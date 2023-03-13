#!/bin/bash

#Check for input arguments
if [ $# -lt 2 ]
    then 
        echo "Not enough arguments supplied."
        echo "1. File Directory"
        echo "2. File Extension"
fi

#Input Arguments
file_directory=$1
EXTENSIONS=$2

#Hardcoded parameters
FILENAME="LAZY"

#Loop through file directory and look for files with specified extension
list_of_files=()
for file in $file_directory*; do
    ext="${file##*.}"
    if [ -f "$file" ] && [ $ext == $EXTENSIONS ]; then
        list_of_files+=($file)
    fi
done

#Separate For-loop since this can get updated based on different types of extensions. 
#List all of the files with specific extensions
for file in "${list_of_files[@]}"
do    
    #Define unique number based on metacap
    NUMBER=1

    #Rename file - this is really only for metacap
    rename="${file_directory}/${FILENAME}.${NUMBER}.bin"
    #$(mv $file $rename)
done

