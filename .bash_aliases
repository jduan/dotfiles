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

# git
alias gitlg='git lg|head'
