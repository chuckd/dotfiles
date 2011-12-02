call pathogen#infect()

autocmd BufWritePre * :%s/\s\+$//e

au BufNewFile,BufRead *.mxml set filetype=mxml
au BufNewFile,BufRead *.as set filetype=actionscript

cmap w!! %!sudo tee > /dev/null % " write with sudo

set autoindent
set autoread
set directory=~/.vim/sessions/
set expandtab
set grepprg=ack\ -a
set laststatus=2
set nocompatible
set number
set smarttab
set shiftwidth=2
set showcmd
set ssop-=options " don't save options when I save a session
"set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\ [%l/%L]
set tabstop=4
set wildmenu

"sane regex by default
nnoremap / /\v
vnoremap / /\v

"better search defaults
set ignorecase
set incsearch
set smartcase
set gdefault
set showmatch

let mapleader=","

" Edit vimrc \ev, gvimrc \gv
nnoremap <silent> <Leader>ev :tabnew<CR>:e ~/.vimrc<CR>
nnoremap <silent> <Leader>gv :tabnew<CR>:e ~/.gvimrc<CR>

" Up and down are more logical with g..
nnoremap <silent> k gk
nnoremap <silent> j gj

" Move lines up and down
nnoremap <C-j> :m+<CR>==
nnoremap <C-k> :m-2<CR>==
inoremap <C-j> <Esc>:m+<CR>==gi
inoremap <C-k> <Esc>:m-2<CR>==gi
vnoremap <C-j> :m'>+<CR>gv=gv
vnoremap <C-k> :m-2<CR>gv=gv

syntax enable
filetype plugin indent on

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
