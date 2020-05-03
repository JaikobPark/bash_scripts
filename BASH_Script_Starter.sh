#! /bin/bash

name_array=('Constance_Castillo' 'Kerry_Goodwin' 'Dorothy_Carson' 'Craig_Williams' 
'Daryl_Guzman' 'Sherman_Stewart' 'Marvin_Collier' 'Javier_Wilkerson' 'Lena_Olson' 
'Claudia_George' 'Erik_Elliott' 'Traci_Peters' 'Jack_Burke' 'Jody_Turner' 'Kristy_Jenkins' 
'Melissa_Griffin' 'Shelia_Ballard' 'Armando_Weaver' 'Elsie_Fitzgerald' 'Ben_Evans' 'Lucy_Baker' 
'Kerry_Anderson' 'Kendra_Tran' 'Arnold_Wells' 'Anita_Aguilar' 'Earnest_Reeves' 'Irving_Stone' 
'Alice_Moore' 'Leigh_Parsons' 'Mandy_Perez' 'Rolando_Paul' 'Delores_Pierce' 'Zachary_Webster' 
'Eddie_Ward' 'Alvin_Soto' 'Ross_Welch' 'Tanya_Padilla' 'Rachel_Logan' 'Angelica_Richards' 
'Shelley_Lucas' 'Alison_Porter' 'Lionel_Buchanan' 'Luis_Norman' 'Milton_Robinson' 'Ervin_Bryant' 
'Tabitha_Reid' 'Randal_Graves' 'Calvin_Murphy' 'Blanca_Bell' 'Dean_Walters' 'Elias_Klein' 
'Madeline_White' 'Marty_Lewis' 'Beatrice_Santiago' 'Willis_Tucker' 'Diane_Lloyd' 'Al_Harrison' 
'Barbara_Lawson' 'Jamie_Page' 'Conrad_Reynolds' 'Darnell_Goodman' 'Derrick_Mckenzie' 
'Erika_Miller' 'Tasha_Todd' 'Aaron_Nunez' 'Julio_Gomez' 'Tommie_Hunter' 'Darlene_Russell' 
'Monica_Abbott' 'Cassandra_Vargas' 'Gail_Obrien' 'Doug_Morales' 'Ian_James' 'Jean_Moran' 
'Carla_Ross' 'Marjorie_Hanson' 'Clark_Sullivan' 'Rick_Torres' 'Byron_Hardy' 'Ken_Chandler' 
'Brendan_Carr' 'Richard_Francis' 'Tyler_Mitchell' 'Edwin_Stevens' 'Paul_Santos' 
'Jesus_Griffith' 'Maggie_Maldonado' 'Isaac_Allen' 'Vanessa_Thompson' 'Jeremy_Barton' 
'Joey_Butler' 'Randy_Holmes' 'Loretta_Pittman' 'Essie_Johnston' 'Felix_Weber' 'Gary_Hawkins' 
'Vivian_Bowers' 'Dennis_Jefferson' 'Dale_Arnold' 'Joseph_Christensen' 'Billie_Norton' 
'Darla_Pope' 'Tommie_Dixon' 'Toby_Beck' 'Jodi_Payne' 'Marjorie_Lowe' 'Fernando_Ballard' 
'Jesse_Maldonado' 'Elsa_Burke' 'Jeanne_Vargas' 'Alton_Francis' 'Donald_Mitchell' 'Dianna_Perry' 
'Kristi_Stephens' 'Virgil_Goodwin' 'Edmund_Newton' 'Luther_Huff' 'Hannah_Anderson' 'Emmett_Gill' 
'Clayton_Wallace' 'Tracy_Mendez' 'Connie_Reeves' 'Jeanette_Hansen' 'Carole_Fox' 'Carmen_Fowler' 
'Alex_Diaz' 'Rick_Waters' 'Willis_Warren' 'Krista_Ferguson' 'Debra_Russell' 'Ellis_Christensen' 
'Freda_Johnston' 'Janis_Carpenter' 'Rosemary_Sherman' 'Earnest_Peters' 'Kelly_West' 
'Jorge_Caldwell' 'Moses_Norris' 'Erica_Riley' 'Ray_Gordon' 'Abel_Poole' 'Cary_Boone' 
'Grant_Gomez' 'Denise_Chapman' 'Vernon_Moran' 'Ben_Walker' 'Francis_Benson' 'Andrea_Sullivan' 
'Wayne_Rice' 'Jamie_Mason' 'Jane_Figueroa' 'Pat_Wade' 'Rudy_Bates' 'Clyde_Harris' 'Andre_Mathis' 
'Carlton_Oliver' 'Merle_Lee' 'Amber_Wright' 'Russell_Becker' 'Natalie_Wheeler' 'Maryann_Miller' 
'Lucia_Byrd' 'Jenny_Zimmerman' 'Kari_Mccarthy' 'Jeannette_Cain' 'Ian_Walsh' 'Herman_Martin' 
'Ginger_Farmer' 'Catherine_Williamson' 'Lorena_Henderson' 'Molly_Watkins' 'Sherman_Ford' 
'Adam_Gross' 'Alfred_Padilla' 'Dwayne_Gibson' 'Shawn_Hall' 'Anthony_Rios' 'Kelly_Thomas' 
'Allan_Owens' 'Duane_Malone' 'Chris_George' 'Dana_Holt' 'Muriel_Santiago' 'Shelley_Osborne' 
'Clinton_Ross' 'Kelley_Parsons' 'Sophia_Lewis' 'Sylvia_Cooper' 'Regina_Aguilar' 
'Sheila_Castillo' 'Sheri_Mcdonald' 'Lynn_Hodges' 'Patrick_Medina' 'Arlene_Tate' 'Minnie_Weber' 
'Geneva_Pena' 'Byron_Collier' 'Veronica_Higgins' 'Leo_Roy' 'Nelson_Lopez')

clear

#Function FindFirstname
function FindFirstname {
	#Getting user input for finding name
	read -p "Enter the first name, or a partial start of the first name: `echo $'\n> '`" user_input
	
	#converting to title case
	user_input=$(echo $user_input | sed 's/.*/\L&/; s/[a-z]*/\u&/g')
	#looping through the array for matches
	for i in ${name_array[*]};
	do
		#if a match is found, echo it.
		#using wildcards after the user input to find a match.
		if [[ $i == $user_input* ]];then
			echo "$i"
		fi
	done	
}
#Function FindLastname
function FindLastname {
	#getting user input for finding name
	read -p "Enter the last name, or a partial start of the last name: `echo $'\n> '`" user_input
	user_input=$(echo $user_input | sed 's/.*/\L&/; s/[a-z]*/\u&/g')
	#Making a underscore for the space.
	space="_"
	#Making a new user_input for easier matching
	user_input=$space$user_input

	#loop through array for matches
	for i in ${name_array[*]};
	do
		#again, using wildcards for matching plus the concatenate trick above.
		if [[ $i == *$user_input* ]];then
			echo "$i"
		fi	
	done	
}

#Function AddName
function AddName {
	#Grabbing user input again.
	read -p "Please enter the new first name: " first_name
	read -p "Please enter the new last name: " last_name

	#Converting to title case!
	first_name=$(echo $first_name | sed 's/.*/\L&/; s/[a-z]*/\u&/g')
	last_name=$(echo $last_name | sed 's/.*/\L&/; s/[a-z]*/\u&/g')

	#our little space.
	space="_"
	#concatenate trick again.
	new_name=$first_name$space$last_name
	#checking to see if there is a space in the name.
	if [[ $first_name = *" "* ]];then
		echo "The first name contains a space. Please try again."
	fi
	#Adding the new name to the begining of the array.
	name_array=("$new_name" "${name_array[@]}")
}

#Function DeleteName
function DeleteName {
	#user input.
	read -p "Enter the full name, ""1"" to views names or ""q"" to quit: " delete_name
	if [[ $delete_name -eq "1" ]];then
		#calling the findfirstname function
		FindFirstname

		#after they find a name, we get what user they would like to delete.
		read -p "Please enter a name to delete: " to_delete
		#converting to title case.
		to_delete=$(echo $to_delete | sed 's/.*/\L&/; s/[a-z]*/\u&/g')
		
		#removing the name from the array, easy!.
		name_array=( "${name_array[@]/$to_delete}" )
		echo "$to_delete has been deleted."

	elif [[ $delete_name == "q" ]] || [[ $delete_name == "Q" ]];then
		#quitting if they chose q or Q
		exit

	else
		#if the user did not chose one of the above, it is interpreted as a request to delete a name.
		#converting the user input above to title case
		delete_name=$(echo $delete_name | sed 's/.*/\L&/; s/[a-z]*/\u&/g')
		
		#deleteing the name from the array
		name_array=( "${name_array[@]/$delete_name}" )
		echo "$delete_name has been deleted."
	fi
}



#Function Exit Program
function ExitProgram {
	#exit.
	exit
}
#while loop to keep things going

while true;
do
	#menu options
	echo "Please select from the following options: "
	echo -e "\n	1.   List all names starting with one or more letters of the first name"
	echo "	2.   List all names starting with one or more letter of the lats name"
	echo "	3.   Add a name"
	echo "	4.   Delete a name"
	echo "	5.   Exit"
	
	read -p "Option #: `echo $'\n> '`" menu_option
	
	#if/elif/else statement for calling functions.
	if [ $menu_option -eq "1" ] > /dev/null 2>&1 ;then
		FindFirstname
	elif [ $menu_option -eq "2" ] > /dev/null 2>&1 ;then
		FindLastname
	elif [ $menu_option -eq "3" ] > /dev/null 2>&1 ;then
		AddName
	elif [ $menu_option -eq "4" ] > /dev/null 2>&1 ;then
		DeleteName
	elif [ $menu_option -eq "5" ] > /dev/null 2>&1 ;then
		ExitProgram
	else
		echo "! That is not a valid option, please try again."
	fi
done
