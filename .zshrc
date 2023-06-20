# clear last login message
clear
# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
# prompt
autoload -U colors && colors
PS1="%F{2}%m: %F{6}%~%F{7}: "
LS_COLORS='di=1;33;41:'

# aliases
alias l='ls -la'
alias diary='./scripts/diary.sh'
# only if you work with crowdin. remove othervise.
export PATH="/opt/homebrew/opt/crowdin@3/bin:$PATH"
