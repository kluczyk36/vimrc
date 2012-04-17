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

" CTRL-W, u is move up window-wise
noremap  <C-W>u <C-W>k
inoremap <C-W>u <C-O><C-W>k
cnoremap <C-W>u <C-C><C-W>k
onoremap <C-W>u <C-C><C-W>k

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
inoremap <C-Left>  <NOP>
inoremap <C-Right> <NOP>
inoremap <C-Up>    <NOP>
inoremap <C-Down>  <NOP>
noremap  <C-Left>  <NOP>
noremap  <C-Right> <NOP>

" text bubbling
nmap <C-Up>   [e
nmap <C-Down> ]e
vmap <C-Up>   [egv
vmap <C-Down> ]egv

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

" window navigation with <C-uhjk>
" window movement with <A-uhjk>
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-u> <C-w>k
noremap <C-k> <C-w>l
noremap <A-h> <C-w>H
noremap <A-j> <C-w>J
noremap <A-u> <C-w>K
noremap <A-k> <C-w>L

" ,W to clear trailing whitespace
nnoremap <Leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" ,v to reselect pasted text
nnoremap <Leader>v V`]

" ,D to change cwd to current file's
" \D to change local cwd to current file's
nnoremap <Leader>D      :cd %:p:h<CR>
nnoremap <LocalLeader>D :lcd %:p:h<CR>

" kill ex mode
nnoremap Q <NOP>
nnoremap gQ <NOP>

" %% — current file directory in command-line mode
cnoremap %% <C-R>=expand('%:h').'/'<CR>
" ,f — open file tree using %%
" ,F — open file tree in cwd
nmap <Leader>f :NERDTree %%<CR>
nmap <Leader>F :NERDTree .<CR>

" =a= to align on =
" =a& to align on &
nmap =a= :Tab /=<CR>
nmap =a& :Tab /&<CR>

" Kill Shift-j
nnoremap <S-j> <NOP>
vnoremap <S-j> <NOP>

" number text object
onoremap  n :<c-u>call PLNumberTextObject(0)<cr>
xnoremap  n :<c-u>call PLNumberTextObject(0)<cr>
onoremap an :<c-u>call PLNumberTextObject(1)<cr>
xnoremap an :<c-u>call PLNumberTextObject(1)<cr>
onoremap in :<c-u>call PLNumberTextObject(1)<cr>
xnoremap in :<c-u>call PLNumberTextObject(1)<cr>

" omnicomplete
inoremap <C-Space> <C-x><C-o>

" Haskell support:
" ,ht -- :GhcModType
" ,hT -- :GhcModTypeClear
" ,hc -- :GhcModCheck
" ,hl -- :GhcModLint
" ,he -- :GhcModExpand
nnoremap <Leader>ht :GhcModType<CR>
nnoremap <Leader>hT :GhcModTypeClear<CR>
nnoremap <Leader>hc :GhcModCheck<CR>
nnoremap <Leader>hl :GhcModLint<CR>
nnoremap <Leader>he :GhcModExpand<CR>
