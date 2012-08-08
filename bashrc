# Some fancy aliases
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

alias rm="rm -i"

# Git branch in the prompt
_git_ps1 ()
{
    local branch="$(git symbolic-ref HEAD 2> /dev/null)";
    if [ -n "$branch" ]; then
        printf " (%s)" "${branch##refs/heads/}";
    fi
}

# Nice shell prompt
export PS1='\[\033[01;32m\][\[\033[00m\]${debian_chroot:+($debian_chroot)}\u@\h \[\033[01;34m\]\W\[\033[00m\]$(_git_ps1)\[\033[01;32m\]]\$\[\033[00m\] ' 

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Autocomplete 'sudo' command
if [ "$PS1" ]; then
        complete -cf sudo
fi

# My default (and essential) editor
VISUAL=vim; export VISUAL
EDITOR=vim; export EDITOR

