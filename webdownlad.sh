#!/bin/bash

read -p "type the name of a URL to download, or type exit to quit: " result
#ask user what location they would like to download from - begins download

    if [ "$result" = "exit" ]
    then exit 
    else wget "$result"
    fi
    #if the user types exit, it will exit the script

   
