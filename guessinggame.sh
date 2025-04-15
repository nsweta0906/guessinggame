#!/bin/bash

# Function to count files
function get_file_count {
    echo $(ls -1 | wc -l)
}

echo "Welcome to the Guessing Game!"
file_count=$(get_file_count)   # Get actual number of files
guess=-1                       # Initialize guess to something incorrect

# Loop until correct guess
while [[ $guess -ne $file_count ]]
do
    read -p "Guess how many files are in the current directory: " guess
    if [[ $guess -lt $file_count ]]; then
        echo "Too low!"
    elif [[ $guess -gt $file_count ]]; then
        echo "Too high!"
    fi
done

echo "Congratulations! You guessed it right!"
