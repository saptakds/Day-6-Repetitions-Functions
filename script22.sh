#!/bin/bash -x
echo "Think of a number between 1 to 100"
choice=2
beg=1
end=100
while [ $choice -ne 1 ]
do
	mid=$((($beg + $end) / 2))
	read -p "Is your no. $mid?	1. Yes	2. Greater than this	3. Lesser than this" choice
	if [ $choice -eq 2 ]
	then
		beg=$mid
	elif [ $choice -eq 3 ]
	then
		end=$mid
	elif [ $choice -eq 1 ]
	then
		echo "Magic no. is $mid"
	else
		echo "Invalid input"
	fi
done
