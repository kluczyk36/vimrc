"=============================================================================
" What Is This: Add some conceal operator for your haskell files
" File:         haskell.vim (conceal enhancement)
" Author:       Vincent Berthoux <twinside@gmail.com>
" Last Change:  2011-09-07
" Version:      1.3.2
" Require:
"   set nocompatible
"     somewhere on your .vimrc
"
"   Vim 7.3 or Vim compiled with conceal patch.
"   Use --with-features=big or huge in order to compile it in.
"
" Usage:
"   Drop this file in your
"       ~/.vim/after/syntax folder (Linux/MacOSX/BSD...)
"       ~/vimfiles/after/syntax folder (Windows)
"
"   For this script to work, you have to set the encoding
"   to utf-8 :set enc=utf-8
"
" Additional:
"     * if you want to avoid the loading, add the following
"       line in your .vimrc :
"        let g:no_haskell_conceal = 1
"  Changelog:
"   - 1.3.1: putting undefined in extra conceal, not appearing on windows
"   - 1.3: adding new arrow characters used by GHC in Unicode extension.
"   - 1.2: Fixing conceal level to be local (thx Erlend Hamberg)
"   - 1.1: Better handling of non utf-8 systems, and avoid some
"           concealing operations on windows on some fonts
"
" pl: removed conceals making things less readable on my font
if exists('g:no_haskell_conceal') || !has('conceal') || &enc != 'utf-8'
    finish
endif

" vim: set fenc=utf-8:
syntax match hsNiceOperator "\\\ze[[:alpha:][:space:]_([]" conceal cchar=λ
syntax match hsNiceOperator "\<sum\>" conceal cchar=∑
syntax match hsNiceOperator "\<product\>" conceal cchar=∏
syntax match hsNiceOperator "\<sqrt\>" conceal cchar=√
syntax match hsNiceOperator "\<pi\>" conceal cchar=π
syntax match hsNiceOperator "\/=" conceal cchar=≠

syntax match hsNiceOperator "\<undefined\>" conceal cchar=⊥

" Match greater than and lower than w/o messing with Kleisli composition
syntax match hsNiceOperator "<=\ze[^<]" conceal cchar=≲
syntax match hsNiceOperator ">=\ze[^>]" conceal cchar=≳

syntax match hsniceoperator "++" conceal cchar=⧺
syntax match hsNiceOperator "\<forall\>" conceal cchar=∀
syntax match hsNiceOperator "-<" conceal cchar=↢
syntax match hsNiceOperator ">-" conceal cchar=↣
syntax match hsNiceOperator "-<<" conceal cchar=⤛
syntax match hsNiceOperator ">>-" conceal cchar=⤜
" the star does not seem so good...

" Only replace the dot, avoid taking spaces around.
syntax match hsNiceOperator /\s\.\s/ms=s+1,me=e-1 conceal cchar=∘

hi link hsNiceOperator Operator
hi! link Conceal Operator
setlocal conceallevel=2

