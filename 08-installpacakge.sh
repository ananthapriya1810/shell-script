#!bin/bash

ID=$(ID -U)

ID=$(id -u)

if [ $ID ne 0 ]

then

echo "ERROR : you are not root user"
else
echo "you are root user"
fi

echo  "all arguments passed :$@"