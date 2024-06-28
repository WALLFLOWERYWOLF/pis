#!/bin/env bash

# Check if .zshrc exists in the current directory
if [ -f ./.zshrc ]; then
    # Read each line from .zshrc in the current directory
    while IFS= read -r line; do
        # Append each line to ~/.zshrc
        echo "$line" >> ~/.zshrc
    done < ./.zshrc

    echo "Contents of .zshrc from current directory appended to ~/.zshrc."
else
    echo "Error: .zshrc file not found in the current directory."
    exit 1
fi

