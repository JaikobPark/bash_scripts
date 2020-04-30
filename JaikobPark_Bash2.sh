#! /bin/sh

function LogicMath
{
	number=$(($number * $number + $number))
}

while true;
do
	read -p "Please enter an interger between 1 and 10: " number
	re='^[0-9]+$'
	if ! [[ $number =~ $re ]] ; then
		echo "false"
		continue
	fi
	echo -e "\n"
	if [ $number -gt 10 ] ; then
		echo "That number is way too big!"
	elif [ $number -lt 1 ] ; then
		echo "That number is too small!"
	else
		LogicMath
		answer=$number
		echo -e "\nThe answer is: $answer!"
		read -p "Please press Q to exit, anything else to go again: " goagain
		if [ $goagain == "Q" ] > /dev/null 2>&1 ;then
			break
		else
			continue
		fi
	fi
done
