#!/bin/bash

hashCheck=$(cat secret.txt)
#linking the hash of the password created in setPasswords.sh and setting as variable hashCheck

read -sp "type a secret password: " userPassword
#prompts user for input and doesn't print. Saves to var userPassword

userHash=$( echo "$userPassword" | sha256sum )
#setting the output of the users sectret password (after being run through sha256sum hash algorithm) as variable userPassword

if [ "$hashCheck" == "$userHash" ]; then
    echo "Access Granted"
    exit 0
#if the hashes of each secret password match, grant access with error code 0
else
    echo "Access Denied" $?
    exit 1
#if the hashes of each secret password don't match, do NOT grant access with error code 1
fi

