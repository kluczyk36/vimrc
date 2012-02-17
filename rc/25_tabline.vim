function! PLGuiTabLabel()
    let tab_label        = ''
    let tab_id           = v:lnum
    let tab_buffer_ids   = tabpagebuflist(tab_id)
    let tab_window_count = tabpagewinnr(tab_id, '$')

    for buffer_id in tab_buffer_ids
        if getbufvar(buffer_id, "&modified")
            let tab_label = '[+] '
            break
        endif
    endfor

    let tab_label .= tab_id . '. '
    let tab_label .= bufname(tab_buffer_ids[tabpagewinnr(tab_id) - 1])

    if tab_window_count > 1
        let tab_label .= ' (' . tab_window_count . ')'
    endif

    return tab_label
endfunction

set guitablabel=%{PLGuiTabLabel()}
