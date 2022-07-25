#!/bin/bash

counter () # takes one argument
{
	local let "c1+=$1"
	let "c2+=${1}*2"
	echo "c1 = $c1"
	echo "c2 = $c2"
}

for i in `seq 1 10`
do
	echo "i = $i"
	counter $i
done

echo "counters are $c1 and $c2"
