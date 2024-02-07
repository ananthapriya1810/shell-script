#!/bin/bash

NUMBER=$1

if [$NUMBER -gt 100]
then
   echo "Then give $NUMBER is greater than 100"
else
    echo "Then given $NUMBER is not greater than 100"
fi