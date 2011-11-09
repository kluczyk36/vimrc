" vim: set ff=unix ft=vim fenc=utf-8:
if !exists(":DiffOrig")
    command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
            \ | wincmd p | diffthis
endif

if !exists(":PLReCfg")
    command PLReCfg source $PL_VIMRC
endif
