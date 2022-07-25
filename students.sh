#/bin/bash

if [[ $1 -eq 0 ]]
then
	echo "No students"
elif [[ $1 -eq 1 ]]
then
	echo "$1 student"
elif [[ $1 -gt 1 && $1 -lt 5 ]]
then 
	echo "$1 students"
elif [[ $1 -gt 4 ]]
then
	echo "A lot of students"
else [[]]
	echo "Incorrect input"
fi
