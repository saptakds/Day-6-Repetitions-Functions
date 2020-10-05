#!/bin/bash -x
function degCConv(){
	if [ $1 -ge 0 -a $1 -le 100 ]
	then
		FTemp=$(echo "scale=2;1.8*$1" | bc)
		finalFTemp=$(echo "scale=2;$FTemp+32" | bc)
		echo $finalFTemp
	else
		echo "Invalid temperature"
	fi
}
function degFConv(){
    if [ $1 -ge 32 -a $1 -le 212 ]
    then
        CTemp=$(echo "scale=2;$1-32" | bc)
        finalCTemp=$(echo "scale=2;$CTemp*0.55" | bc)
        echo $finalCTemp
    else
        echo "Invalid temperature"
    fi
}
echo "1. degree C"
echo "2. degree F"
read -p "Enter your choice: " choice
case $choice in
	1)
		read -p "Enter temperature: " temp
		degFConv $temp
		;;
	2)
		read -p "Enter temperature: " temp
        degCConv $temp
        ;;
	*)
		echo "Invalid Input!"
		;;
esac
