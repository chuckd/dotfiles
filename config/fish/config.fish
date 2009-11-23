if test (uname -s) = "Darwin"
  set fish_greeting ""

  set -x CDPATH . ~ ~/Sites
  set -x GEM_HOME $GEM_PATH
  set -x GEM_PATH $HOME/.gem/ruby/1.8
  set -x PATH /usr/local/bin ~/.gem/ruby/1.8/bin /usr/bin /bin /usr/sbin /sbin /usr/X11/bin
  set -x MANPATH /usr/local/share/man /usr/X11/man /usr/share/man
end
