#!/bin/bash

hashCheck=secret.txt

read -sp "type a secret password: " userPassword

echo -s "$userPassword" | sha256sum > userHash.txt

userHash=userHash.txt

if cmp -s -- "$hashCheck" "$userHash"; then
    echo "Access Granted" $?
else
    echo "Access Denied" $?
fi

