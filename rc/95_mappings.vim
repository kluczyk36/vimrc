" vim: set ff=unix ft=vim fenc=utf-8:

" more familiar bindings
source $VIMRUNTIME/mswin.vim

" stop annyoing whitespace destroying behaviour
inoremap <CR> <CR>x<BS>

" spellchecking (F11 toggle)
inoremap <silent> <F11> :set spell!<CR>
nnoremap <silent> <F11> :set spell!<CR>
vnoremap <silent> <F11> :set spell!<CR>

" tagbar (F9 toggle)
inoremap <silent> <F9> :TagbarToggle<CR>
nnoremap <silent> <F9> :TagbarToggle<CR>
vnoremap <silent> <F9> :TagbarToggle<CR>
