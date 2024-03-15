#! /bin/bash
echo "Script to find min max"
read -p "enter no 1 : " e
min=$e
max=$e

for (( i=2;i<=5;i++ ))
do
	read -p "enter no $i : " no
	if [[ $no -ge $max ]]
	then
		max=$no

	elif [[ $no -lt $min ]]
	then
		min=$no
	fi
done

echo "max no : $max "
echo "min no : $min"
