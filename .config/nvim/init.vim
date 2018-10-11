if &compatible
 set nocompatible
endif

let g:python3_host_prog = expand('~/.config/nvim/python/bin/python')
let g:python_host_prog = expand('~/.config/nvim/python/bin/python')

" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

let s:dein_dir = '~/.cache/dein'
let s:toml_file = '~/.config/nvim/dein.toml'
let s:toml_file_lazy = '~/.config/nvim/dein_lazy.toml'
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#load_toml(s:toml_file)
  call dein#load_toml(s:toml_file_lazy, {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif

if has('vim_starting') && dein#check_install()
  call dein#install()
endif

 call map(dein#check_clean(), "delete(v:val, 'rf')")

filetype plugin indent on
syntax enable
set number
set ruler
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<,eol:<
set incsearch
set hlsearch
set whichwrap=h,l
set hidden
set history=2000
set expandtab
set tabstop=4
set shiftwidth=4
set backspace=start,eol,indent,
nnoremap <silent> <C-j> :bprev<CR>
nnoremap <silent> <C-k> :bnext<CR>
nnoremap <silent> <C-x> :bdelete<CR>
