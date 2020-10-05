#!/bin/bash -x
function isPrime(){
	if [ $(($1 % 2)) -eq 0 ]
	then
		return 1
	fi
for(( i=3 ; i<=$(($1/2)) ; i+=2 ))
	do
		if [ $(($1 % $i)) -eq 0 ]
		then
			return 1
		fi
	done
	return 0
}
if isPrime $1
then
	echo "Prime no."
else
	echo "Not a prime no."
fi
