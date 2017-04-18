# For use when I am using OHMYZSH instead of prezto

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="sorin"

HYPHEN_INSENSITIVE="true"
# ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins
plugins=(git npm node yarn postgres sudo yarn brew colorize emoji docker)


source $ZSH/oh-my-zsh.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export SSH_KEY_PATH="~/.ssh/rsa_id"
export RANGER_LOAD_DEFAULT_RC=FALSE
export PATH=$PATH:/usr/bin/sensors
fpath=(/usr/local/share/zsh-completions $fpath)

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='atom'
else
  export EDITOR='mvim'
fi

# Custom
alias l="ls -Fh"
alias la="ls -AFh"
alias ll="ls -l"
alias rr="ranger"

alias ip="curl ipinfo.io/ip"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

alias gs="git status"
alias ga="git add ."
alias gc="git commit"
alias gp="git push"

alias p="pm2"
alias dk="docker"
alias dkp="docker ps"
alias dkpa="docker ps -a"
alias dki="docker images"

alias git=hub
