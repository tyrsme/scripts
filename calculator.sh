#!/bin/bash

read -p "Enter Two numbers: " a b
#ask user to enter 2 numbers

read -p "Enter Operation: " Operation
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
#ask user what mathematical Operation they would like to conduct

case $Operation in
    1) Result=$((a+b)) #addition
        echo -e "\033[34m"$Result #result of addition in coloured blue
    ;;
    
    2) Result=$((a-b)) #subtraction
        echo -e "\033[32m"$Result #result of subtraction is green
    ;;

    3) Result=$((a*b)) #multiplication
        echo -e "\033[31m"$Result #result of multiplication is red
    ;;

    4) Result=$((a/b)) #division
        echo -e "\033[35m"$Result #result of division is purple
    ;;

esac
echo Result=$Result #print result
