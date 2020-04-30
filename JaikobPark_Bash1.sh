#! /bin/sh

#Variables

soda_base_price=100
payment=0
balance=0

variance=$((($RANDOM%4)*5))
soda_price=$(($soda_base_price + $variance))
balance=$(($soda_price - $payment))


echo "Welcome to the soda machine. You can enter values of 5, 10, or 25 in payment"
read -p "What type of soda would yoou like? `echo $'\n> '`" soda_type

echo -e "\nThe current price of $soda_type is $soda_price cents"

while true;
do
	read -p "Please enter a coin: `echo $'\n> '`" coin
	
	if [ $coin -eq 5 ];then
		echo "You have inserted a nickel."
	elif [ $coin -eq 10 ];then
		echo "You have inserted a dime."
	elif [ $coin -eq 25 ];then
		echo "You have inserted a quarter."
	else
		echo -e "\n! That is not a valid coin."
		echo -e "\nYou still owe $balance cents"
		continue
	fi

	payment=$(($payment + $coin/1))
	balance=$(($soda_price - $payment))
	if [ $balance -gt 0 ];then
		echo -e "\nYou still owe $balance cents"
	elif [ $balance -lt 0 ];then
		echo -e "\nYou have been refunded cents"
		break
	else
		break
	fi

done

echo -e "\nEnjoy your $soda_type!"
read -p "Please press enter to close the program"
