" Vim color file tailored legibility on black background.
"
" Maintainer:   John Rhee  <jrhee75@gmail.com>
" Last Change:  2005/10/18      v0.1

hi clear
set background=dark
if exists("syntax_on")
        syntax reset
endif
let g:colors_name = "icansee"

"color settings for these terminal types:
"Black          term=NONE cterm=NONE ctermfg=0 ctermbg=0
"DarkRed        term=NONE cterm=NONE ctermfg=1 ctermbg=0
"DarkGreen      term=NONE cterm=NONE ctermfg=2 ctermbg=0
"Brown          term=NONE cterm=NONE ctermfg=3 ctermbg=0
"DarkBlue       term=NONE cterm=NONE ctermfg=4 ctermbg=0
"DarkMagenta    term=NONE cterm=NONE ctermfg=5 ctermbg=0
"DarkCyan       term=NONE cterm=NONE ctermfg=6 ctermbg=0
"Gray           term=NONE cterm=NONE ctermfg=7 ctermbg=0
"DarkGray       term=NONE cterm=bold ctermfg=0 ctermbg=0
"Red            term=NONE cterm=bold ctermfg=1 ctermbg=0
"Green          term=NONE cterm=bold ctermfg=2 ctermbg=0
"Yellow         term=NONE cterm=bold ctermfg=3 ctermbg=0
"Blue           term=NONE cterm=bold ctermfg=4 ctermbg=0
"Magenta        term=NONE cterm=bold ctermfg=5 ctermbg=0
"Cyan           term=NONE cterm=bold ctermfg=6 ctermbg=0
"White          term=NONE cterm=bold ctermfg=7 ctermbg=0
    
        

hi Comment      guifg=DarkGray
hi Constant     guifg=Cyan                      gui=NONE
hi Cursor       guifg=Black      guibg=fg
hi CursorColumn                  guibg=#202020
hi CursorLine                    guibg=#202020
hi Directory    guifg=Cyan
hi Error        guifg=White      guibg=Red
hi ErrorMsg     guifg=White      guibg=Red
hi Identifier   guifg=Cyan
hi Ignore       guifg=bg
hi IncSearch                                    gui=reverse
hi LineNr       guifg=DarkYellow
hi ModeMsg                                      gui=bold
hi MoreMsg      guifg=SeaGreen                  gui=bold
hi NonText      guifg=DarkGreen                 gui=bold
hi Normal       guifg=Gray       guibg=Black
hi PreProc      guifg=DarkRed
hi Question     guifg=Green                     gui=bold
hi Search       guifg=White      guibg=DarkRed  gui=bold
hi Special      guifg=Red
hi SpecialKey   guifg=#444444
hi Statement    guifg=Yellow                    gui=NONE
hi StatusLine   guifg=Black      guibg=Grey     gui=NONE
hi StatusLineNC guifg=Black      guibg=#555555  gui=NONE
hi Title        guifg=White                     gui=bold
hi Todo         guifg=White      guibg=#555500
hi Type         guifg=Green                     gui=none
hi Visual       guifg=White      guibg=DarkGreen
hi WarningMsg   guifg=Red
