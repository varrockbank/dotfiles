# Only show username if root (UID=0) or SSH session
if [[ $UID -eq 0 || -n $SSH_CONNECTION ]]; then
  PROMPT_USER='%F{cyan}%n%f '
else
  PROMPT_USER=''
fi

# Set prompt
setopt prompt_subst
PROMPT_DIRTRIM=2

# Colorful single-line prompt
PROMPT='${PROMPT_USER}%F{magenta}%~%f %(?.%F{green}✔%f.%F{red}✘%f) %F{yellow}❯%f '

# Aliases
alias ls="ls -lah -G"
alias gs="git status"
alias v="vim"

# Default editor
export EDITOR=vim

# Enable colors
autoload -U colors && colors

# Use vi keybindings
bindkey -v

#24 bit true color
export TERM=xterm-256color

cd ~/Documents
