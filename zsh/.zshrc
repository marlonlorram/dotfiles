# ZSH settings
ZSH_THEME="robbyrussell"
plugins=(git docker yarn)

export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Language settings
export LANG="pt_BR.UTF-8"
export LANGUAGE="pt_BR.UTF-8"
export LC_ALL="pt_BR.UTF-8"

# Editor settings
export EDITOR=vim

# Disable settings
export GATSBY_TELEMETRY_DISABLED=1
export ZSH_DISABLE_COMPFIX=true
export DISABLE_SPRING=true
export DISABLE_BETTER_ERRORS=true
export DISABLE_RACK_MINI_PROFILER=true

# User settings
DEFAULT_USER="$USER"
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Android tools
ANDROID=$HOME/Android
PATH=$ANDROID/cmdline-tools/latest:$PATH
PATH=$ANDROID/cmdline-tools/latest/bin:$PATH
PATH=$ANDROID/platform-tools:$PATH

# Android SDK
ANDROID_SDK=$HOME/ANDROID
PATH=$ANDROID_SDK:$PATH

# Flutter
FLUTTER=$ANDROID/flutter
PATH=$FLUTTER/bin:$PATH

# Golang
PATH=$PATH:/usr/local/go/bin

# Source zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Source zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Source aliases and functions:
for file in ~/dotfiles/zsh/.{aliases,functions}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done

# Export PATH at the end
export PATH
