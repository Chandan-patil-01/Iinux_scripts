#! /bin/bash
read -p "Enter a String : " name

if  [[ $name == "$(rev <<< "$name")" ]]
then
	echo "$name is palindrome"
else
	echo "$name is not palindrome"
fi

