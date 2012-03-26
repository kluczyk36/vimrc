if exists("g:pl_vim_maximized")
    finish
endif

if has("win32")
    let s:dllfile = expand('<sfile>:p:h').'/maximize.dll'
    autocmd GUIEnter * call libcallnr(s:dllfile, 'Maximize', 0)
endif

let g:pl_vim_maximized = 1
