if test (uname -s) = "Darwin"
  set fish_greeting ""

  set -x CDPATH . ~ ~/Sites
  set -x EDITOR mvim
  set -x FLEX_HOME "/usr/local/flex"
  set -x GIT_EDITOR "mvim -f"
  set -x MANPATH /usr/local/share/man /usr/X11/man /usr/share/man
  set -x PATH /usr/local/bin /usr/local/Cellar/ruby/1.9.2-p0/bin /usr/bin /bin /usr/sbin /sbin /usr/X11/bin /usr/local/flex/bin
end
