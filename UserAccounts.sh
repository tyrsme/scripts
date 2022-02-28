#!/bin/bash

#!/bin/bash

echo "User Accounts"
#What is being displayed
#The script below pulls data from the /etc/passwd file and displays it in a user readable format

awk 'BEGIN {
    FS=":";
    if($5=/bin/bash)
    
    print "|\033[34mUsername                |UserID  |GroupID  |Home     |Shell                                    \033[0m|";
    print "_______________________________________________________________________________________________";
}

{

    printf("|\033[33m%-17s\033[0m       |\033[35m%-8s\033[0m|\033[35m%-8s\033[0m |\033[35m%-8s\033[0m |\033[35m%-40s\033[0m |\n", $1, $2, $3, $4, $5);

}

END {

    print("                                       ");
    
}' /etc/passwd #source directory for data
