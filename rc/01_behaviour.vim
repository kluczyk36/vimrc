" vim: set ff=unix ft=vim fenc=utf-8:
set mousemodel=popup
set selectmode=mouse
set keymodel=
set selection=exclusive

set backspace=indent,eol,start

set mouse=a
set nomousehide

set nobackup
set history=50
set incsearch

filetype plugin indent on
autocmd FileType text setlocal textwidth=78

" indenting
set tabstop=4
set shiftwidth=4
set smarttab
"set autoindent
set smartindent
set expandtab

" swap file location
set dir=.
