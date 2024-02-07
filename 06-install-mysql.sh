#!/bin/bash

ID=$(id -u)

if [ $ID ne 0 ]

then

echo "ERROR : you are not root user"
else
echo "you are root user"
fi

yum install mysql -y

if [ $? -ne 0 ]

then

echo "installation is failed"

else

echo "installation is success"

fi

yum install git -y 

if [ $? -ne 0 ]

then

echo "installation GIT is failed"

else

echo "installation GIT is success"

fi