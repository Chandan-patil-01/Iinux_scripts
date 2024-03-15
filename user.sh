#! /bin/bash

while true
do
read -p "to add student press 1 |to del press 2 | to find press 3 | to see all data press4 |press 5 to exit :" n
case $n in
	1)
		echo "enter data as follows"
		read -p "rollno,name,sem,sub1_marks,sub2_marks,sub3_marks :" data
		echo $data >> data.csv
	;;
	2)
		read -p "enter name to delete data" data
		sed -i "/$data/d" data.csv
	;;
	3)
		read -p "enter name you want to find" data
		grep $data data.csv
	;;
	4)
		cat data.csv
	;;
	5)
		break
	;;
esac
done
