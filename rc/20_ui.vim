" vim: set ff=unix ft=vim fenc=utf-8:
set nowrap
set cmdheight=2

" line numbers
set number
set numberwidth=6

" cursor position highlighting
set cursorline
set cursorcolumn

set showcmd
set hlsearch

" always show tabline and statusline
set showtabline=2
set laststatus=2

" GUI tabline, right-hand scrollbar
set guioptions=eR
set guifont=Consolas:h13
set linespace=0

syntax on

set nofoldenable

set list
set listchars=tab:>-,trail:·,extends:»,precedes:«,nbsp:⍽

colorscheme icansee

set statusline=%<#%n\ %F\ [%{&fileencoding}]\ [%{&fileformat}]\ %y%(\ %m%)%(\ %r%)%=%-14.(%l,%c%V%)\ %P
