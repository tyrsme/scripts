#!/bin/bash

./passwordCheck.sh
#run script above

return=$?
#utilise error code from script to affect function of this script, save as variable return

if [ $return = 0 ]; then
    echo -e "\033[1;33m""1. Create a folder" 
    echo -e "2. Copy a folder"
    echo -e "3. Set a password"
    echo -e "4. Calculator"
    echo -e "5. Create Week Folders"
    echo -e "6. Check Filenames"
    echo -e "7. Download a File"
    echo -e "\033[31m""8. Exit""\033[0m"
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

    4)
        ./calculator.sh
        ;;
        #if user selects 4, run the calculator.sh script

    5)
        ./megafoldermaker.sh
        ;;
        #if user selects 5, run the megafoldermaker.sh script

    6)
        ./filenames.sh
        ;;
        #if user selects 6, run the filenames.sh script

    7)
        ./webdownlad.sh
        ;;
        #if user selects 7, run the webdownlad.sh script

    8)
        exit
        ;;
        #if user selects 8, exit script

    esac

fi
