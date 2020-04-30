#! /bin/sh

counter=0
declare -a my_array


echo "Create an array filled with some words and numbers"
while [ $counter -lt 10 ];
do
	read -p "Please enter a number or word: `echo $'\n> '`" user_input
	my_array+=($user_input)
	counter=$(($counter+1))
done

if [ ${#my_array[@]} -eq 10 ];then
	echo -e "\nThis array has ten items"
else
	echo -e "\nThis array does not have ten items"
fi

#printing out the array
echo -e "${my_array[*]}"

#Swapping the first and last items in the array.
echo -e "\nSwapping first and last items: "
first_thing=${my_array[0]}
my_array[0]=${my_array[-1]}
my_array[-1]=$first_thing
echo -e "${my_array[*]}"

#print first three and last three
echo -e "\nPrinting the first three and last three items in the array: "
echo -e "${my_array[@]:0:3}"
echo -e "${my_array[@]:7:9}\n"

#loop through the array and print out each individual item
for i in "${my_array[@]}";
do
	echo "$i"
done


#Check to see if a cat is in my array
cat="cat"
for i in ${!my_array[*]};
do
	#Using an example from videos here. checking to see if each array value contains cat.
	if [[ ${my_array[$i]} == $cat ]]; then
		echo -e "\nThere is a cat in my array"
	fi
done

#Get the name of a marvel character
echo -e "\n"
read -p "Please insert the name of a Marvel character: `echo $'\n> '`" marvel_hero
#Generate a random number
randomint=$(($RANDOM%10))
#insert the movel character into the randomly generated index
my_array[$randomint]=$marvel_hero

#print out the index position of the hero, then the array
echo -e "\n$marvel_hero is at position $randomint in the array"
echo "${my_array[*]}"
#sort the array then print it out, using examples from videos here.
my_array=($(for e in ${my_array[*]}; do echo $e; done | sort))
echo -e "\n${my_array[*]}"
