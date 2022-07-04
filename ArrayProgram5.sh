#!/bin/bash -x

counter=0
for(( i=1; i<100; i++ ))
do
	if [ $(( $i%11 )) -eq 0 ]
	then
		Number[((count++))]=$i
	fi
done
echo ${Number[@]}
