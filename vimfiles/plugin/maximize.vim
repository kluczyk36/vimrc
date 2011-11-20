if exists("g:pl_vim_maximized")
    finish
endif

let s:dllfile = expand('<sfile>:p:h').'/maximize.dll'
autocmd GUIEnter * call libcallnr(s:dllfile, 'Maximize', 0)

let g:pl_vim_maximized = 1
