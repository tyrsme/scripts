#!/bin/bash

while IFS= read -r file directory
#read filename line by line
do 
    if [ -f "$file" ]; then
        echo "That file exists"
    else
        echo "I don't know what that is!" 
    fi

    #if valid filename exists/doesn't in document, print as a above.

    if [ -d "$directory" ]; then
        echo "That's a directory"
    else
        echo "I don't know what that is!"
    fi

    #if a valid directory appears/doesn't in document, print as above

done < filenames.txt #file being read
