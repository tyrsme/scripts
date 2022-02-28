#!/bin/bash

./IpInfo.sh | sed -n '/IP Address: / {
    s/IpAddress: /ip address: /
    p
}'
#pipe the output of the IpInfo.sh script into the sed command, 
#printing only the lines with 'Ip Adresses' on them
    
