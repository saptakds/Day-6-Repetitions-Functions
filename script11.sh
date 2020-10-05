#!/bin/bash -x
n=$1
for num in `seq 0 $n`
do
	echo $((2**$num))
done
