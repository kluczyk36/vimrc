" vim: set ff=unix ft=vim fenc=utf-8:

" more familiar bindings
source $VIMRUNTIME/mswin.vim

" stop annyoing whitespace destroying behaviour
inoremap <CR> <CR>x<BS>

" spellchecking (F11 toggle)
nnoremap <silent> <F11> :set spell!<CR>

" tagbar (F9 toggle)
nnoremap <silent> <F9> :TagbarToggle<CR>

" gundo (F5 toggle)
nnoremap <F5> :GundoToggle<CR>

" yup
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>
noremap  <Up>    <NOP>
noremap  <Down>  <NOP>
noremap  <Left>  <NOP>
noremap  <Right> <NOP>
