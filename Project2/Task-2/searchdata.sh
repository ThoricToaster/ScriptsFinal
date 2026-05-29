#!/bin/bash

echo "enter file name including the path: "
read file

#checks if file exists and exits if it doesnt
if [ ! -f $file ]; then
    echo "file not found"
    exit
fi
echo "enter text to search for: "
read text
grep -i $text $file > pattern.txt
