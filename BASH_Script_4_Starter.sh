#! /bin/bash

lyrics_string="Quisiera:Ayer:cambiarle:conocí:el:un:final:cielo:al:sin:cuento|Las:sol|Y:barras:un:y:hombre:los:sin:tragos:suelo|Un:han:santo:sido:en:testigo|De:prision|Y:el:una:dolor:canción:que:triste:me:sin:causaste:dueño|Y:y:conocí:to':tus:lo:ojos:que:negros|Y:hciste:ahora:conmigo|Un:sí:infeliz:que:en:no:el:puedo:amor,:vivir:que:sin:aun:ellos:no:yo|Le:te:pido:supera|Que:al:ahora:cielo:camina:solo:solo:un:sin:deseo|Que:nadie:en:por:tus:todas:ojos:las:yo:aceras|Preguntándole:pueda:a:vivir|He:Dios:recorrido:si:el:en:mundo:verad:entero|te:el:vengo:amor:a:existe|:decir|"

declare -a song1
declare -a song2
declare -a song3
declare -a lyrics
declare -a duplicates
song1_print=""
song2_print=""


IFS=":" read -r -a lyrics <<< "$lyrics_string"

for (( i=1-1; i<${#lyrics[@]};i+=2)); do
	song1+=(${lyrics[$i]})
	song2+=(${lyrics[$i+1]})
done

for i in "${song1[@]}"; do
	song1_print="${song1_print} ${i}"
done

for i in "${song2[@]}"; do
	song2_print="${song2_print} ${i}"
done


song1_print=$(echo $song1_print | sed 's/|/\n/g')
song2_print=$(echo $song2_print | sed 's/|/\n/g')

echo -e "\nSong one: \n$song1_print"
echo -e "\nSong two: \n$song2_print"

#grab duplicates
#sort new song
