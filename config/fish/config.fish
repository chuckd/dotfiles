if test (uname -s) = "Darwin"
  set fish_greeting ""

  set -x CDPATH . ~ ~/Sites
  set -x EDITOR mvim
  set -x FLEX_HOME "/usr/local/flex"
  set -x GIT_EDITOR "mvim -f"
  set -x GEM_HOME $HOME/.gem/ruby/1.8
  set -x GEM_PATH $GEM_HOME
  set -x JAVA_HOME /Library/Java/Home
  set -x MANPATH /usr/local/share/man /usr/X11/man /usr/share/man
  set -x PATH /usr/local/bin $GEM_HOME/bin /usr/bin /bin /usr/sbin /sbin /usr/X11/bin /usr/local/flex/bin /usr/local/mysql/bin
end
