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

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on branch %b'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%n in ${PWD/#$HOME/~} ${vcs_info_msg_0_} > '


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

# Prompt segments

MYDOTS_L_SQUARE="%F{cyan}[%f"
MYDOTS_R_SQUARE="%F{cyan}]%f"
MYDOTS_HOSTNAME="%F{magenta}%B%M%b%f"
MYDOTS_GIT=""
MYDOTS_ARROW="%F{yellow}%B->%b%f"
MYDOTS_DIR="%/"


PROMPT="$MYDOTS_ROOT$MYDOTS_L_SQUARE$MYDOTS_HOSTNAME$MYDOTS_R_SQUARE $MYDOTS_DIR $MYDOTS_ARROW "
RPROMPT=\$vcs_info_msg_0_
