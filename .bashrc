# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source inputrc
if [ -f $HOME/.inputrc ]; then
	. $HOME/.inputrc
fi

unset USERNAME
# bash itself related
export HISTCONTROL=ignoreboth
export HISTSIZE=50000
# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bash_specific ]; then
    . ~/.bash_specific
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

[[ -s "/home/jduan/.rvm/scripts/rvm" ]] && source "/home/jduan/.rvm/scripts/rvm"

# add git branch name to the shell prompt
export PS1='[\u@ \W$(__git_ps1 " (%s)")]\$ '
# show unstaged (*) and staged (+) changes next to the branch name
export GIT_PS1_SHOWDIRTYSTATE=1
# show $ next to the branch name if something is stashed
export GIT_PS1_SHOWSTASHSTATE=1

# If not running interactively, don't do anything
[ -z "$PS1" ] && return


# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

# 'screen'
alias sc='screen'
alias scl='screen -list'
alias scx='screen -x'

alias tf='tail -f'

alias ssh='ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null'
alias psef='ps -ef | grep -i '
alias grep='grep -irn --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ls='ls --color=tty'

# bundle
alias be='bundle exec'

# p4
alias p4changes='p4  changes -u jduan -l | less'

export LANG=en_US

[ -s "/home/jduan/.scm_breeze/scm_breeze.sh" ] && . "/home/jduan/.scm_breeze/scm_breeze.sh"

# bb anywhere
function bb () {
    cd `findup Config`
    brazil-build $*
    cd -
}
