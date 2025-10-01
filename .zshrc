# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)
source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


