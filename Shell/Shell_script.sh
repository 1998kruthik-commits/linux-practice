#!/bin/bash
#Author - Kruthik
#Date - 31/03/26
#Description -  creating file and directory, giving all the permission

# Read directory name
echo "Enter directory name:"
read dir

# Create directory
mkdir "$dir"
cd "$dir"

# Read file name
echo "Enter file name:"
read file

# Create file
touch "$file"
chmod 666 "$file"

ls -lrt

echo "Directory '$dir' and file '$file' created with read & write permissions."
