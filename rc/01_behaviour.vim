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
autocmd FocusLost * silent! wa

" indenting
set tabstop=4
set shiftwidth=4
set smarttab
set autoindent
set expandtab
set shiftround

" swap file location
" // at the end makes vim preserve the full name (replacing slashes with
" percents, as in undodir)
let &dir = $PL_VIM_PATH . '/swap//'

" persistent undo
set undofile
let &undodir = $PL_VIM_PATH . '/undo'

" file format
set fileformats=unix,dos

" omnicomplete
set ofu=syntaxcomplete#Complete
