#!/bin/bash

ID=$(id -U)

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