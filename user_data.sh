#! /bin/bash

echo  "Script to print Following Commands "

echo -n  "Current logged in user by whoami :"
whoami
echo -n "current working directory by pwd : "
pwd
echo -n "are no of files in current directory by ls -l|wc -l : "
ls -l|wc -l
echo -n "Current terminal we are woring on by tty : "
tty

