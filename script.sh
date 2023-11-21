#!/bin/bash
#output file 
touch auto_out.txt
echo "This is my Script, which is executed after boot" >> auto_out.txt
if [ $auto_out.txt==true ];
then
echo "auto.txt"
else
echo "auto.txt not Exist"
fi
file=/home/test/18.11/auto.sh
if [ -e "$file" ]; then
  if [ -x "$file" ]; then
    "$file"
  echo "file executed"
  else
  echo "file not executable"
 fi
else
 echo "file not exist"
fi
