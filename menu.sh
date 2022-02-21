#!/bin/bash
./passwordCheck.sh
 read -rs $?

if [ "$?" = "1" ]; then
    echo "1. Create a folder" 
    echo "2. Copy a folder"
    echo "3. Set a password"
fi
