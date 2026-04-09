#!/bin/bash

dir="/home/kruthik/Desktop/Devops/Shell/Demo"

for i in {1..20}
do
  if (( i % 3 == 0 ))
  then
    touch "$dir/file$i.txt"
  else
    touch "$dir/file$i.log"
  fi
done
