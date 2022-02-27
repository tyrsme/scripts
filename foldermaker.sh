#!/bin/bash

read -p "type the name of the folder you would like to create" folderName 
#asking user input for the newly created folderName
      
mkdir "$folderName"
#make new directory
     