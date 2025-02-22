#!/bin/bash

# Takes in two command line args, one for the number of dice to roll, and the other for which type of dice to roll.
# Usage: ./dice_rolling.sh <NUMBER_OF_DICE> <NUMBER_OF_SIDES>

# Gets the number of dice from the first argument and the number of sides from the second argument
num_dice=$1
num_sides=$2

# Checks the inputs if both arguments are provided
if [ -z "$num_dice" ] || [ -z "$num_sides" ]; then
    echo "Usage: ./dice_rolling.sh <NUMBER_OF_DICE> <NUMBER_OF_SIDES>"
    exit 1
fi

# Loops to roll the dice and print the results
for (( i = 0; i < num_dice; i++)); do
    echo "Die $((i+1)): $((RANDOM % num_sides +1))"
done
