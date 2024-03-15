#! /bin/bash
echo -e "Script to create delete user and group \n\tSelect option \n\t1.Create User\n\t2.Delete user\n\t3.Create Group\n\t4.Delete Grpup"
read option
case $option in
	1)
	read -p "Enter name to create user : " us
	sudo adduser $us
	;;
	2)
	read -p "Enter name to delete user : " us
	sudo deluser $us
	;;
	3)
	read -p "Enter name to create group : " us
	sudo addgroup $us
	;;
	4)
	read -p "Enter name to delete group : " us
	sudo delgroup $us
	;;
esac
