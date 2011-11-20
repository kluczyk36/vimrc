" vim: set ff=unix ft=vim fenc=utf-8:
" parts of this file are based on mswin.vim

" leaders
let mapleader=','
let maplocalleader='\'

" backspace in Visual mode deletes selection
vnoremap <BS> d

" cut, copy, paste
vnoremap <C-X> "+x
vnoremap <C-C> "+y
map      <C-V> "+gP
cmap     <C-V> <C-R>+

" Pasting blockwise and linewise selections is not possible in Insert and
" Visual mode without the +virtualedit feature.  They are pasted as if they
" were characterwise instead.
" Uses the paste.vim autoload script.

exe 'inoremap <script> <C-V>' paste#paste_cmd['i']
exe 'vnoremap <script> <C-V>' paste#paste_cmd['v']

" Use CTRL-Q to do what CTRL-V used to do
noremap <C-Q> <C-V>

" Use CTRL-S for saving, also in Insert mode
noremap  <C-S> :write<CR>
vnoremap <C-S> <C-C>:write<CR>
inoremap <C-S> <C-O>:write<CR>

" undo, redo
noremap  <C-Z> u
inoremap <C-Z> <C-O>u
noremap  <C-Y> <C-R>
inoremap <C-Y> <C-O><C-R>

" CTRL-A is Select all
noremap  <C-A> gggH<C-O>G
inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
cnoremap <C-A> <C-C>gggH<C-O>G
onoremap <C-A> <C-C>gggH<C-O>G
snoremap <C-A> <C-C>gggH<C-O>G
xnoremap <C-A> <C-C>ggVG

" CTRL-Tab is Next window
noremap  <C-Tab> <C-W>w
inoremap <C-Tab> <C-O><C-W>w
cnoremap <C-Tab> <C-C><C-W>w
onoremap <C-Tab> <C-C><C-W>w

" CTRL-F4 is Close window
noremap  <C-F4> <C-W>c
inoremap <C-F4> <C-O><C-W>c
cnoremap <C-F4> <C-C><C-W>c
onoremap <C-F4> <C-C><C-W>c

" stop annyoing whitespace destroying behaviour
inoremap <CR> <CR>x<BS>

" spellchecking
nnoremap <Leader>s :set spell!<CR>

" tagbar
nnoremap <Leader>l :TagbarToggle<CR>

" gundo
nnoremap <Leader>u :GundoToggle<CR>

" yup
inoremap <Up>      <NOP>
inoremap <Down>    <NOP>
inoremap <Left>    <NOP>
inoremap <Right>   <NOP>
noremap  <Up>      <NOP>
noremap  <Down>    <NOP>
noremap  <Left>    <NOP>
noremap  <Right>   <NOP>
inoremap <C-Up>    <NOP>
inoremap <C-Down>  <NOP>
inoremap <C-Left>  <NOP>
inoremap <C-Right> <NOP>
noremap  <C-Up>    <NOP>
noremap  <C-Down>  <NOP>
noremap  <C-Left>  <NOP>
noremap  <C-Right> <NOP>

" make hjkl be more like arrows
" remap u to mean 'up', k to mean 'right', and disable l
noremap k l
noremap u gk
noremap j gj
noremap l <NOP>

" quick nohls
nnoremap <Leader><Space> :nohls<CR>

" move to matching parens
nnoremap <Tab> %
vnoremap <Tab> %

nnoremap ; :

" window nawigation with <C-uhjk>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-u> <C-w>k
map <C-k> <C-w>l

" ,q to close current window
noremap <Leader>q <C-W>c

" ,W to clear trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" ,v to reselect pasted text
nnoremap <leader>v V`]
