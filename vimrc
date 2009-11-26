autocmd BufWritePre * :%s/\s\+$//e

" Quick comment/uncomment with c and u
autocmd BufNewFile,BufRead *.rb,*.py,*.pl,*.sh vmap u :-1/^#/s///<CR>
autocmd BufNewFile,BufRead *.rb,*.py,*.pl,*.sh vmap c :-1/^/s//#/<CR>

au BufNewFile,BufRead *.mxml set filetype=mxml
au BufNewFile,BufRead *.as set filetype=actionscript

cmap w!! %!sudo tee > /dev/null % " write with sudo

set autoindent
set autoread
set cursorline
set directory=~/.vim/sessions/
set expandtab
set grepprg=ack\ -a
set incsearch
set laststatus=2
set list
set nocompatible
set number
set smarttab
set shiftwidth=2
set showcmd
set ssop-=options " don't save options when I save a session
"set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\ [%l/%L]
set tabstop=4
set wildmenu

" Edit vimrc \ev, gvimrc \gv
nnoremap <silent> <Leader>ev :tabnew<CR>:e ~/.vimrc<CR>
nnoremap <silent> <Leader>gv :tabnew<CR>:e ~/.gvimrc<CR>

" Up and down are more logical with g..
nnoremap <silent> k gk
nnoremap <silent> j gj

syntax enable

:au BufWinEnter * let w:m1=matchadd('Search', '\%<101v.\%>97v', -1)
:au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)

nmap <F5> <ESC>:call LoadSession()<CR>
let s:sessionloaded = 0
function LoadSession()
  source Session.vim
  let s:sessionloaded = 1
endfunction
function SaveSession()
  if s:sessionloaded == 1
    mksession!
  end
endfunction
autocmd VimLeave * call SaveSession()

