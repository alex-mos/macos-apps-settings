# prompt colors
autoload -U colors && colors
PS1="%F{2}%m: %F{6}%~%F{7}: "
LS_COLORS='di=1;33;41:'

# history sync between processes
setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY

# aliases
alias l='ls -la'

# open url
function o() {
  local url="$1"
  if [[ "$url" != http* ]]; then
    url="https://$url"
  fi
  open "$url"
}

# custom scripts
export PATH="$PATH:$HOME/scripts/"

# java
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@18/bin:$PATH"
