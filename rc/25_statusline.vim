" vim: set ff=unix ft=vim fenc=utf-8:
function! PL_indent_warning()
    if !exists("b:statusline_tab_warning")
        let tabs   = search('^\t', 'nw') != 0
        let spaces = search('^ ', 'nw')  != 0
        
        if tabs && spaces
            let b:statusline_tab_warning = 'mixed indenting'
        elseif (spaces && !&et) || (tabs && &et)
            let b:statusline_tab_warning = 'wrong &et'
        else
            let b:statusline_tab_warning = ''
        endif
    endif
    return b:statusline_tab_warning
endfunction

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
set statusline+=%1*%{PL_indent_warning()}%0*
set statusline+=\ %-23.(line\ %l\ column\ %c%V%)
set statusline+=\ %P
