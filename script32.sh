#!/bin/bash -x
function isPalindrome(){
	num=$1
	sum=0
	while [ $num -ne 0 ]
	do
		r=`expr $num % 10`
		sum=`expr $(($sum * 10)) + $r`
		num=`expr $num / 10`
	done
	if [ $1 -eq $sum ]
	then
		echo "Palindrome"
	else
		echo "Not palindrome"
	fi
}
read -p "Enter first no.: " a
read -p "Enter second no.: " b
isPalindrome $a
isPalindrome $b
