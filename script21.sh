#!/bin/bash -x
n=$1
num=0
while [ $num -le $n -a $((2**$num)) -le 256 ]
do
	echo $((2**$num))
	((num++))
done
