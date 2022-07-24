#!/usr/bin/bash

gcd ()
{
a=$1
b=$2
while [[ ! $a -eq 0 && ! $b -eq 0 ]]
do
if [[ $a -gt $b ]]
then
	let "a = a % b"
else
	let "b = b % a"
fi
done
let "finalgcd = a + b"
echo "GCD is $finalgcd"
}

again="true"
while [[ $again == "true" ]]
do
read int1 int2
if [[ $int1 -eq 0 && $int2 -eq 0 ]]
then
	echo "bye"
	break
else
	gcd $int1 $int2
fi
done
