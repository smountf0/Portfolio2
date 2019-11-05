#!/usr/bin/bash
#guessing game

scorefile=" highscores _bash"
guess=1
typeset -i num=0

echo -e "guess.bash - Guess a number between 1 and 100\n"
#generate random numbers
(( answer = RANDOM % 100 + 1 ))

#how to play the game
while (( guess != answer )); do
    num=num+1
    read -p "Enter guess $num: " guess
    if (( guess < answer )); then
        echo "you need to go higher..."
    elif (( guess > answer )); then
        echo "you need to go lower..."
    fi
done
echo -e "Finally Correct! That took $num guesses.\n"

#if you want to save your high score
read -p "Please enter your name: " name
echo $name $num >> $scorefile

#how to print your high score
echo -e "\nPrevious high scores.."
cat $scorefile