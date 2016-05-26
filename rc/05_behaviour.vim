" vim: set ff=unix ft=vim fenc=utf-8:

" keyboard/mouse
set mousemodel=popup
set selectmode=mouse
set keymodel=
set backspace=indent,eol,start
set virtualedit=

if has('gui')
    set mouse=a
    set nomousehide
end

" command line
set history=50
set wildignore=*.swp,*.bak,*.pyc,*.pyo,*.exe,*.pdb,*.obj
set wildmenu

" search/replace
set incsearch
set ignorecase
set gdefault

" reading files
set fileformats=unix,dos
set modeline

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
if g:pl_environment == 'desktop'
    let &dir = $PL_VIM_PATH . '/swap//'
end

" undo/backup
set nobackup
set undolevels=1000
if g:pl_environment == 'desktop'
    set undofile
    let &undodir = $PL_VIM_PATH . '/undo'
end

" misc
set ofu=syntaxcomplete#Complete
set selection=exclusive
autocmd FocusLost * silent! wa
filetype plugin indent on
