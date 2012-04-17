function! PLSOReformat()
    let config_path  = $PL_VIM_PATH
    let config_path .= "/so-astyle.conf"
    let command      = ":%!astyle --options=" . config_path
    execute command
endfunction

function! PLNumberTextObject(whole)
    normal! v

    while getline('.')[col('.')] =~# '\v[0-9]'
        normal! l
    endwhile

    if a:whole
        normal! o

        while col('.') > 1 && getline('.')[col('.') - 2] =~# '\v[0-9]'
            normal! h
        endwhile
    endif
endfunction
