#!/usr/bin/env bash
g=$(ls | wc -l)

function game_g {
	read game
	if [[ $game -eq $g ]]
	then
		echo "Correct!"
		for f in $(ls)
		do
			echo "  - $f"
		done
	else
		if [[ $game -gt $g ]]
		then
			echo "Too high, guess again :"
			game_g
		else
			echo "Too low, guess again "
			game_g
		fi
	fi
}
echo "Hello"
echo "How many files are in the current directory:"
game_g
