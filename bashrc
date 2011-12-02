#
# env
#
export PATH=/usr/local/flex/bin:/usr/local/mysql/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin
# trailing hash below means MANPATH doesn't replace /etc/manpaths
export MANPATH=/usr/local/mysql/man:

export CLICOLOR=1
export EDITOR=vim
export FLEX_HOME="/usr/local/flex"
export JAVA_HOME=/Library/Java/Home
export RUBYOPT=rubygems

export GOROOT=`brew --prefix`/Cellar/go/HEAD
export GOARCH=amd64
export GOOS=darwin

#
# config
#
if [ -f `brew --prefix`/etc/git-completion.bash ]
  then
    source `brew --prefix`/etc/git-completion.bash
    PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$(__git_ps1 " (%s)")\$ '
fi

bind "set bell-style none"
bind "set show-all-if-ambiguous On"

case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
    ;;
*)
    ;;
esac

if [ -s ~/.rvm/scripts/rvm ] ; then source ~/.rvm/scripts/rvm ; fi

#
# aliases
#

alias g="git status"

alias reweb="sudo apachectl -k restart && sleep 0.2 && tail /var/log/apache2/error_log"
alias tree="tree -C"

alias beq="cd ~/Sites/beqik2"

# topcommands="history | awk '{a[$2]++}END{for(i in a){print a[i] " " i }}' | sort -rn | head"
