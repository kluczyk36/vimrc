" Vim syntax file
" Language:     Oz
"               http://www.mozart-oz.org
" Maintainer:   Stephane Leibovitsch <stephane.leibovitsch at idealx.com>
" Last Change:  Mon 12 Feb 2001
" URL:

" There are two sets of highlighting in here:
" One is "oz_characters", another "oz_keywords"
" If you want to disable keywords highlighting, put in your .vimrc:
"       let oz_keywords=1
" If you want to disable special characters highlighting, put in
" your .vimrc:
"       let oz_characters=1

" Quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" oz is case sensitive.
syn case match

" Very simple highlighting for comments, clause heads and
" character codes. It respects oz strings and atoms.

syn match    ozComment   +%.*+
" syn region   ozComment  start=+/\*+ end=+\*/+ fold
" syn region   ozString1   start=+"+ skip=+\\"+ end=+"+
" syn region   ozString2   start=+'+ skip=+\\'+ end=+'+
syn region   ozString1   start=+"+ end=+"+
syn region   ozString2   start=+'+ end=+'+
" some sybols
syn match ozOperator "\[]\|==\|\\=\|=>\|<=\|!=\|<\|>\|=<:\|=<:\|>=:\|=>:\|\\=:"
syn match ozNumber "\<[0123456789]*\>"
" syn match ozSpecialCharacter ""
" syn match ozSpecialCharacter ";\|,\|\[\|\]\|(\|)\|{\|}\|:\||"
" syn match ozSpecialCharacterCommand "!\|->\|\."

" all function
"syn match   ozFunction  /{\([A-Za-z]*\.\)*[A-Za-z]*/hs=s+1,he=e
syn match   ozFunction  /{\(\w*\.\)*\w*\d*/hs=s+1,he=e

syntax keyword ozKeyword andthen at attr case catch choice
syntax keyword ozKeyword class cond declare define dis
syntax keyword ozKeyword div else elsecase elseif end
syntax keyword ozKeyword export fail false feat finally from
syntax keyword ozKeyword fun functor if import in local
syntax keyword ozKeyword lock meth mod not of or orelse
syntax keyword ozKeyword prepare proc prop raise require
syntax keyword ozKeyword self skip then thread true try
syntax keyword ozKeyword unit

syntax keyword ozKeyword scanner lex mode
syntax keyword ozKeyword parser token syn prod

"syn region folding start="proc" end="end" transparent fold
"syn region folding start="fun"   end="end" transparent fold
"syn region folding start="{"    end="}" transparent fold
"syn region folding start="local" end="end" transparent fold
"syn region folding start="\["    end="]" transparent fold
"syn region folding start="("    end=")" transparent fold
"syn match  folding +%.*+    transparent
"set foldmethod=syntax

" The default highlighting.
hi def link ozComment Comment
hi def link ozKeyword Keyword
hi def link ozString1 String
hi def link ozString2 String
hi def link ozFunction Function
hi def link ozSpecialCharacter Special
hi def link ozNumber Number
hi def link ozOperator Operator
hi def link ozSpecialCharacterCommand Keyword
hi def link ozModules Keyword

let b:current_syntax = "oz"

