#!/usr/bin/env bash

# Check if zsh is installed
if ! command -v zsh &> /dev/null
then
    echo "Zsh is not installed."
    exit 1
fi

# Install oh-my-zsh
echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Create symbolic links for configuration files
echo "Creating symbolic links for zsh configuration files..."
for file in ~/dotfiles/zsh/.zshrc; do
  if [ -f "$file" ]; then
    ln -fs "$file" ~/
  else
    echo "Warning: $file does not exist."
  fi
done

# Suppress the last login message on login
echo "Suppressing the last login message..."
touch ~/.hushlogin

echo "Done."
