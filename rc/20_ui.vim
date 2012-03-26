" vim: set ff=unix ft=vim fenc=utf-8:
set nowrap
set sidescroll=1
set cmdheight=2

" line numbers
set numberwidth=6
set relativenumber

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
if has("gui_win32")
    set guifont=DejaVu_Sans_Mono:h11
else
    set guifont=DejaVu\ Sans\ Mono\ 11
endif
set linespace=0

syntax on

set nofoldenable

set list
set listchars=tab:▸-,trail:·,extends:»,precedes:«,nbsp:⍽

colorscheme icansee
