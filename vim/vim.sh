#!/usr/bin/env bash

# The directory of the dotfiles
dotfiles_dir=~/dotfiles/vim

# The vim configuration file
vimrc_file=.vimrc

# Check if the dotfiles directory exists
if [ ! -d "$dotfiles_dir" ]; then
    echo "Directory $dotfiles_dir not found. Please check the path."
    exit 1
fi

# Check if the .vimrc file exists in the dotfiles directory
if [ ! -f "$dotfiles_dir/$vimrc_file" ]; then
    echo "File $vimrc_file not found in directory $dotfiles_dir. Please check the path."
    exit 1
fi

# Create a symbolic link for the .vimrc file in the user's home directory
ln -fs $dotfiles_dir/$vimrc_file ~/

echo "Symbolic link for $vimrc_file created successfully."