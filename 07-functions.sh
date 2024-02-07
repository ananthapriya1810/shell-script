#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]

then

echo "ERROR:: $2 .... FAILED"
exit 1

else

echo "$2 ....SUCCESS"

fi
}

if [ $ID ne 0 ]

then

echo "ERROR : you are not root user"
else
echo "you are root user"
fi

yum install mysql -y

VALIDATE $? "Installing mysql"

yum install git -y

VALIDATE $? "Installing GIT"