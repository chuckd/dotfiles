#
# env
#
export PATH=/usr/local/mysql/bin:$PATH

# trailing hash below means MANPATH doesn't replace /etc/manpaths
export MANPATH=/usr/local/mysql/man:

export EDITOR=vim

export CLICOLOR=1

export JAVA_HOME=/Library/Java/Home
export FLEX_HOME="/Applications/Adobe Flash Builder Beta 2/sdks/4.0.0"

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
alias ea="vi ~/Dotfiles/bashrc && . ~/dotfiles/bashrc"

alias g="git status"
alias gb="git branch"
alias gc="git commit -v"

alias reweb="sudo apachectl -k restart && sleep 0.2 && tail /var/log/apache2/error_log"
alias tree="tree -C"

alias ..="cd .."

alias s="cd ~/Sites"
alias bq="cd ~/Sites/beqik2"

alias sc="~/Sites/beqik2/script/console"
alias sa="~/Sites/beqik2/script/autospec"

# topcommands="history | awk '{a[$2]++}END{for(i in a){print a[i] " " i }}' | sort -rn | head"

function take {
  mkdir $1
  cd $1
}

alias t="take t"

function gog() {
  cd `gem environment gemdir`/gems/$1*
}

function gbt() {
  git branch --track $2 $1/$2
  git checkout $2
}
