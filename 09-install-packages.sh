#!bin/bash

ID=$(id -U)

TIMESTAMP=(DATE +%F-%H-%M-%S)
logfile="/tmp/$0-$TIMESTAMP.LOG"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
    echo "print $2 ...SUCCESS"
    else 
    echo "print $2 ....FAILED"
    fi
}

if [ $ID ne 0 ]

then

echo "ERROR : you are not root user"
else
echo "you are root user"
fi

#echo  "all arguments passed :$@"
for package in $@
do
 yum list installed $package
 if [ $? -ne 0 ]
 then
 yum install $package -y
 VALIDATE $? "installation of $package"
 else
 echo "$package is already installed "
 fi
done