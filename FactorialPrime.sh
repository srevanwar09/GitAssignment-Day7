#!/bin/bash -x

read -p "Enter Number : " num
count=0
for ((i=2;$num>1;i++))
do
	while [ $(($num%$i)) -eq 0 ]
	do
		primeArray[((count++))]=$i
		num=$(($num/$i))
	done
done

echo ${primeArray[@]}
