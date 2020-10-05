#!/bin/bash -x
heads=0
tails=0
while [ $heads -ne 11 -a $tails -ne 11 ]
do
	echo "Flipping coin..."
	toss=$((1+RANDOM%2))
	if [ $toss -eq 1 ]
	then
    	((heads++))
	else
    	((tails++))
	fi
done
if [ $heads -eq 11 ]
then
	echo "Head wins"
else
	echo "Tail wins"
fi
