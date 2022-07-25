#!/bin/bash


again="true"

while [[ $again == "true" ]]
do
#	echo "Введите значения"
read int1 action int2
if [[ $int1 == "exit" ]]
then
echo "bye"
break
elif [[ ! $int1 -eq 0 && ! $action == 0 && ! $int2 -eq 0 ]]
then
	case $action in
		+)
			let "result = int1 + int2"
			echo "$result"
			;;
		-)
			let "result = int1 - int2"
			echo "$result"
			;;
		"*")
			let "result = int1 * int2"
			echo "$result"
			;;
		/)
			let "result = int1 / int2"
			echo "$result"
			;;
		%)
			let "result = int1 % int2"
			echo "$result"
			;;
		"**")
			let "result = int1 ** int2"
			echo "$result"
			;;
		*)
			echo "error"
			break
	esac
else
	echo "error"
	break
fi

done
