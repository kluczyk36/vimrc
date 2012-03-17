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
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.pyo,*.exe,*.pdb,*.obj
set wildmenu
set incsearch
set ignorecase
set smartcase
set gdefault

filetype plugin indent on
"autocmd FileType text setlocal textwidth=78
autocmd FocusLost * silent! wa
autocmd BufReadPost fugitive://* set bufhidden=delete

" indenting
set tabstop=4
set shiftwidth=4
set smarttab
"set autoindent
set smartindent
set expandtab

" swap file location
set dir=.

" file format
set fileformats=unix,dos
