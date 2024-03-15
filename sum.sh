#! /bin/bash
echo "Script to add no"
read -p " Enter no : " no

sum=0

while [ $no -ne 0 ]
do
	digit=$((no%10))
	sum=$((sum+digit))
	no=$((no/10))
done
echo "Sum is :$sum"
