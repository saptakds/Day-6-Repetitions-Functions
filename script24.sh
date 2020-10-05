#!/bin/bash -x
amt=100
won=0
bets=0
while [ $amt -gt 0 -a $amt -lt 200  ]
do
	((bets++))
	result=$((1+RANDOM%2))
	if [ $result -eq 1 ]
	then
		((won++))
		((amt++))
	else
		((amt--))
	fi
	echo "Won: $won"
	echo "Bets: $bets"
done
if [ $amt -eq 200 ]
then
	echo "Won"
else
	echo "Broke"
fi
