# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git cap osx)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/lib/ruby/gems/1.9.1/bin:/Users/chuckd/bin:/usr/local/flex/bin:/usr/local/mysql/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin
export EDITOR=vim

alias reweb="sudo apachectl -k restart && sleep 0.2 && tail /var/log/apache2/error_log"
alias tree="tree -C"

alias beq="cd ~/Dropbox/beqik2"
alias g="git status --short"

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# Improve git completion speed a little
__git_files () {
  _wanted files expl 'local files' _files
}

# Allow rake to run tasks with arguments, like rake flex:release[15]
alias rake="noglob rake"
alias be="bundle exec"
unsetopt correct_all

export USE_BUNDLER=force
export RUBY_GC_MALLOC_LIMIT=59000000
