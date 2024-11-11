#!/usr/bin/env bash

guess_files() {
    # Get the actual number of files in the current directory
    correct_guess=$(ls -1 | wc -l)
    
    # Prompt the user for a guess
    while true; do
        echo "How many files are in the current directory?"
        read user_guess
        
        # Check if the user's guess is correct
        if [[ $user_guess -eq $correct_guess ]]; then
            echo "Congratulations! You guessed the correct number of files."
            break
        elif [[ $user_guess -lt $correct_guess ]]; then
            echo "Your guess is too low. Try again."
        else
            echo "Your guess is too high. Try again."
        fi
    done
}

# Call the function to start the game
guess_files
