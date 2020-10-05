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
for num in `seq $1 $2`
do
	if isPrime $num
	then
    	echo $num
	fi
done
