# clear last login message
clear
# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
# prompt
PS1="[%n@%m]: "
