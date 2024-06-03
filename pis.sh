#!/bin/env bash

# Define the directory containing the scripts
script_dir="./scripts"

# List of scripts
scripts=("apps.sh" "git.sh" "keys.sh" "live-server.sh" "node.sh" "nvim.sh" "zshrc.sh" "zsh-history.sh" "steam.sh" "virt.sh")

# Iterate over each script in the array
for script in "${scripts[@]}"; do
	# Construct the full path to the script
	script_path="$script_dir/$script"

	# Check if the script is executable
	if [ -x "$script_path" ]; then
		echo "Executing $script_path ..."
		# Execute the script
		"$script_path"
		# Check the exit status of the script
		if [ $? -ne 0 ]; then
			echo "Error executing $script_path. Exiting."
			exit 1
		fi
	else
		echo "$script_path is not executable. Skipping."
	fi
done
