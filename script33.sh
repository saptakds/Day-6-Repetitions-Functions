#!/bin/bash -x
function isPrime(){
    if [ $1 -eq 2 ]
    then
        return 0
    elif [ $(($1 % 2)) -eq 0 ]
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
function getPalindrome(){
    num=$1
    sum=0
    while [ $num -ne 0 ]
    do
        r=$(($num % 10))
        sum=`expr $(($sum * 10)) + $r`
        num=`expr $num / 10`
    done
	return $sum
}
read -p "Enter a no.: " N
if isPrime $N
then
	echo "No. is prime"
	getPalindrome $N
	palin=$?
	if isPrime $palin
	then
		echo "Palindrome is also prime"
	else
		echo "Palindrome is not prime"
	fi
else
	echo "No. is not prime"
fi
