# prompt colors
autoload -U colors && colors
PS1="%F{2}%m: %F{6}%~%F{7}: "
LS_COLORS='di=1;33;41:'

# aliases
alias l='ls -la'

# custom scripts
export PATH="$PATH:$HOME/scripts/"
