export LC_ALL=ru_RU.utf8

autoload -Uz promptinit
promptinit

zstyle ':completion:*' completer _complete _ignored _correct _approximate
zstyle ':completion:*' max-errors 2
zstyle :compinstall filename '/home/valdeg/.zshrc'

# HISTFILE
[ -z "$HISTFILE" ] && HISTFILE="$HOME/.config/zsh-history"
HISTSIZE=5000
SAVEHIST=1000

setopt hist_expire_dups_first           # Deletes duplicates first
setopt hist_ignore_dups                 # Ignore duplicates

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.


# Aliases
alias zshrc='vim ~/.zshrc'
alias vimrc='vim ~/.config/nvim/init.vim'
alias up="cd .."
alias cl="clear"
alias vim="nvim"
alias ls="ls --color=always"
alias ll="ls -alh --color=always"
alias gst="git status"
alias gp="git push"

PROMPT="%# %F{cyan}%n @ %M%f "
