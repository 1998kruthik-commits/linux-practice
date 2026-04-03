#!/bin/bash
#Author - Kruthik
#Date - 
#Description -

echo "Select an operation:"
echo "1. Show memory usage (free -m)"
echo "2. Show disk usage (df -h)"
echo "3. Show directory sizes (du -h)"
echo "4. Show system information (uname -a)"
echo "Any other key: Show man help"

read opr

case $opr in
    1)
        echo "Running: free -m"
        free -m
        ;;
    2)
        echo "Running: df -h"
        df -h
        ;;
    3)
        echo "Running: du -h"
        du -h
        ;;
    4)
        echo "Running: uname -a"
        uname -a
        ;;
    *)
        echo "Invalid option! Showing man help"
        man --help
        ;;
esac
