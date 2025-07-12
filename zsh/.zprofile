# clear last login message
clear

# language
export LANG="en_EN.UTF-8"
export LC_ALL="ru_RU.UTF-8"

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
export LIBRARY_PATH=/usr/local/lib
export LIBRARY_PATH=$LIBRARY_PATH:/opt/homebrew/lib

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
export PATH=$PATH:`npm root -g`
export NODE_PATH=$NODE_PATH:`npm root -g`
