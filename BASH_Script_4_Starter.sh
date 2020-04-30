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

echo "${lyrics[*]}"

for (( i=0; i<${#lyrics[@]}; i=i+2)) ;do
	echo > /dev/null 2>&1
	song1+=${lyrics[$i]}
	song2+=$((${lyrics[$i+1]}))
done

echo "${song1[*]}"

for a in "${song1[@]}";
do
	song1_print+=$(($a))
	echo "$song1_print"
done

