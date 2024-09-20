# clear last login message
clear

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
export LIBRARY_PATH=/usr/local/lib
export LIBRARY_PATH=$LIBRARY_PATH:/opt/homebrew/lib

# prompt colors
autoload -U colors && colors
PS1="%F{2}%m: %F{6}%~%F{7}: "
LS_COLORS='di=1;33;41:'

# aliases
alias l='ls -la'

# custom scripts
export PATH="$PATH:$HOME/scripts/"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Java
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
