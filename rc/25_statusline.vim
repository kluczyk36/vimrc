" vim: set ff=unix ft=vim fenc=utf-8:
function! PL_indent_mode()
    if &et
        return ',expandtab'
    else
        return ',noexpandtab'
    endif
endfunction

set statusline=%*%F%<
set statusline+=\ (%{&ff},%{&fenc},%{&ft},%{PL_indent_mode()}%M)
set statusline+=%=
set statusline+=\ %-23.(line\ %l\ column\ %c%V%)
set statusline+=\ %P
