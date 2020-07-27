#!/usr/bin/env bash
user=$(ls | wc -l)

function user_guess {
	read user
	if [[ $user -eq $guess ]]
	then
		echo "Correct!"
		for f in $(ls)
		do
			echo "  - $f"
	else
		if [[ $guess -gt $filenum ]]
		then
			echo "Too high, guess again :"
			user_guess
		else
			echo "Too low, guess again "
			user_guess
		fi
	fi
}
echo "Hello"
echo "How many files are in the current directory:"
user_guess
