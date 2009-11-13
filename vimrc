:set sw=2
:set smarttab
:set autoindent
:syntax enable
:set expandtab
:set grepprg=ack\ -a
:set nu
:autocmd BufWritePre * :%s/\s\+$//e
