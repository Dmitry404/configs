# Check for an interactive session
[ -z "$PS1" ] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

### Colorized less output (for mans) ###
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

### Tab-completion after commands ###
complete -cf sudo
complete -cf man

### Bash Completion ###
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

### Export variables ###
export EDITOR=vim

### Aliases ###
alias ll='ls -l'
alias la='ls -a'

alias ..='cd ..'
alias ...='cd ../..'

alias cl=clear

alias df='df -h'
alias du='du -h'
