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

if has("unnamedplus")
    set clipboard+=unnamedplus
else
    set clipboard+=unnamed
end

filetype plugin indent on
autocmd FocusLost * silent! wa
autocmd BufReadPost fugitive://* set bufhidden=delete

" indenting
set tabstop=4
set shiftwidth=4
set smarttab
set smartindent
set expandtab
set shiftround

" swap file location
set dir=.

" persistent undo
set undofile
let &undodir = $PL_VIM_PATH . '/undo'

" file format
set fileformats=unix,dos

" omnicomplete
set ofu=syntaxcomplete#Complete
