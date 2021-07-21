#!/usr/bin/env bash

echo "[Welcome to Guessing game - John Hopkins]"

function query {
	echo "Please enter the number of files in the current directory:"
	read guess
    files=$(ls -1 | wc -l)
}

query

while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]] 
	then
		echo "Too low."
	else
		echo "Too high."
	fi
	query
done

echo "Well done! It is the correct answer, here is the list of files:"
echo "---" && ls -1
