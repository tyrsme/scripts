#!/bin/bash

read -p "type the name of the folder: " folderName
#folder directory path - placing user input into variable 'folderName'

read -sp "type a secret password: " userPassword
#prompting user to enter secret password not shown on screen

echo "$userPassword" | sha256sum > secret.txt
#Push users secret password through hash algorithm and output hash only to secret.txt file in user designated directory
