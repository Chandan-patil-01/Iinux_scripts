#! /bin/bash
echo "To find positive negative and zero in 10 no "
pos=0
neg=0
zerp=0
for i in {1..10}
do
	read -p "enter no $i :- " a
	if [[ $a -gt 0 ]]
	then
		((pos+=1))
	elif [[ $a -lt 0 ]]
	then
		((neg+=1))
	else
		((zerp+=1))
	fi
done
echo "There are $pos nos which are  positive"
echo "There are $neg nos which are  negative"
echo "There are $zerp nos which are  zero"
