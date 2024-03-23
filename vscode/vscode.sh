#!/usr/bin/env bash

# The directory for configuration files
config_dir="~/dotfiles/vscode"

# Create symbolic links for configuration files
find $config_dir -name '*.json' -maxdepth 1 -print0 | while IFS= read -r -d '' file; do
    ln -fs "$file" ~/.config/VSCodium/User/ || { echo "Failed to create symbolic link for $file"; exit 1; }
done

# The packages to be installed
packages=(
  # List of packages
  alefragnani.project-manager
  christian-kohler.npm-intellisense
  cssho.vscode-svgviewer
  eamodio.gitlens
  formulahendry.auto-close-tag
  formulahendry.auto-rename-tag
  HookyQR.beautify
  marcostazi.VS-code-vagrantfile
  mikestead.dotenv
  ms-azuretools.vscode-docker
  ms-vsliveshare.vsliveshare
  PKief.material-icon-theme
  pnp.polacode
  possan.nbsp-vscode
  redhat.vscode-yaml
  ritwickdey.LiveServer
  sianglim.slim
  steoates.autoimport
  timonwong.shellcheck
  usernamehw.indent-one-space
  wayou.vscode-todo-highlight
  wmaurer.change-case
  zhuangtongfa.material-theme
  southclaws.vscode-pawn
)

# Install the packages
for package in "${packages[@]}"; do
    if ! codium --install-extension "$package"; then
        echo "Failed to install $package"
        exit 1
    fi
done
