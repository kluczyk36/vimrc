if exists("b:did_ftplugin")
    finish
endif

let b:did_ftplugin = 1

function! CurBuf( )
    return tabpagebuflist()[tabpagewinnr(tabpagenr())-1]
endfunction

function! GotoBuf( buf )
    if bufwinnr( a:buf ) == -1
        execute ":buffer " . a:buf
    else
        execute ":normal! \<c-w>" . a:buf . "w"
    endif
endfunction

let s:prevbuf = CurBuf( )

rightbelow vnew
setlocal buftype=nofile nomodifiable noswapfile nobuflisted nobackup bufhidden=delete previewwindow

let s:coqbuf = CurBuf( )
let s:coqlast = $PL_VIM_PATH . '\coqlast.pl'
let s:coqcmd = 'silent! %!coqtop -batch -lv .coqtmp.v | ' . s:coqlast

call GotoBuf( s:prevbuf )

function! Coq_run( )
    silent! 1,.w! .coqtmp.v
    let l:prevbuf = CurBuf( )
    call GotoBuf( s:coqbuf )
    setlocal modifiable
    echo s:coqcmd
    execute s:coqcmd
    setlocal nomodifiable
    silent! !del .coqtmp.v
    normal! G
    call GotoBuf( l:prevbuf )
    redraw!
endfunction

inoremap <buffer> <Leader>. <esc>:call Coq_run( )<cr>a
nnoremap <buffer> <Leader>. :call Coq_run( )<cr>
