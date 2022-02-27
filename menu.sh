#!/bin/bash

./passwordCheck.sh
#run script above

return=$?
#utilise error code from script to affect function of this script, save as variable return

if [ $return = 0 ]; then
    echo "1. Create a folder" 
    echo "2. Copy a folder"
    echo "3. Set a password"
    #if the error code from passwordCheck.sh is 0, print text above

    read -p "Enter a number: " number
    #ask user to enter a number relating to the menu options above
    
    case $number in
    #case statement being the number selected from the request above

    1)
        ./foldermaker.sh
        ;;
        #if user selects 1, run the foldermaker.sh script


    2) 
        ./foldercopier.sh
        ;;
        #if user selects 2, run the foldercopier.sh script

    3)
        ./setPasswords.sh
        ;;
        #if user selects 3, run the setPasswords.sh script

    esac

fi
