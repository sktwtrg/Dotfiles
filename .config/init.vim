syntax on

set number
set ruler
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<,eol:<
set incsearch
set hlsearch
set showmatch
set whichwrap=h,l
set wrapscan
set ignorecase
set smartcase
set hidden
set history=2000
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set helplang=en
set backspace=start,eol,indent,
set encoding=utf-8

let g:python3_host_prog = expand('~/.config/nvim/python3/bin/python')
let g:python_host_prog = expand('~/.config/nvim/python2/bin/python')

colorscheme desert

if &compatible
  set nocompatible
endif
set runtimepath+=~/.config/nvim/
call dein#begin(expand("~/.cache/dein"))
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})
call dein#end()

