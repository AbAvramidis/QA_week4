#!/bin/bash 


array=(one two three)

echo ${#array[*]}

for item in ${array[*]}
do 
	printf "%s\n" $item
done


read -a arr
for i in "${arr[@]}"
do
	printf "%s\n" $i
done | sort -n
