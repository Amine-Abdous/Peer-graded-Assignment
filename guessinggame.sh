#!/usr/bin/env bash

function guess {
	echo "Please enter the number of files in this directory:"
	read var_num
    files=$(ls -1 | wc -l)
}

guess

while [[ $var_num -ne $files ]]
do
	if [[ $var_num -lt $files ]] 
	then
		echo "The number is low"
	else
		echo "The number is high"
	fi
	guess
done

echo "Congratulation ! It is the correct answer, here is the list of files:"
echo "---" && ls -1
