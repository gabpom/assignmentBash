#!/bin/bash bash
# File: guessinggame.sh


funcion howMany{

	echo "How many files are in the directory?"
}




howMany

number = $(pwd | ls | wc - l)

until [[ $response -eq $number ]]; do
	read response
	if [[ $response -gt $number ]]; then
		echo "Response is greater than the number of files"
	
	elif [[ $response -lt $number ]]; then
		echo "Response is less than than the number of files"
	fi

done

echo " You have the right number of files and this is  , $response" 
