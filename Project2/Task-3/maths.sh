#!/bin/bash

#set operation to 1 to start loop
operation="1"

#loops until input equals !
while [ "$operation" != "!" ]; do
    read -p "choose operation + - * / or press ! to exit: " operation

    if [ "$operation" == "!" ]; then
        break
    fi

    #get the users 2 numbers
    read -p "first number: " number1
    read -p "second number: " number2

    if [ "$operation" == "+" ]; then
        echo $(($number1 + $number2))
    elif [ "$operation" == "-" ]; then
        echo $(($number1 - $number2))
    elif [ "$operation" == "*" ]; then
        echo $(($number1 * $number2))
    elif [ "$operation" == "/" ]; then
        echo $(($number1 / $number2))
    else
        echo "invalid input"
    fi
done
