#!/usr/bin/env bash

# The directory of the dotfiles
dotfiles_dir=~/dotfiles/git

# Use a for loop to handle the files
for file in $(find $dotfiles_dir -name '.git*'); do
    ln -fs $file ~/
done