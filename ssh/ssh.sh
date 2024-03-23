#!/usr/bin/env bash

# Create .ssh directory if it doesn't exist
mkdir -p ~/.ssh

# Check if the .ssh directory was successfully created or accessed
if [[ $? -ne 0 ]]; then
    echo "Failed to create or access ~/.ssh"
    exit 1
fi

# Check if the ssh config file exists in the current directory
if [[ ! -f ssh/config ]]; then
    echo "ssh/config does not exist in the current directory"
    exit 1
fi

# Copy the ssh config file to the .ssh directory
cp ssh/config ~/.ssh/config

# Check if the ssh config file was successfully copied
if [[ $? -ne 0 ]]; then
    echo "Failed to copy ssh/config to ~/.ssh/config"
    exit 1
fi

echo "ssh/config copied to ~/.ssh/config successfully"
