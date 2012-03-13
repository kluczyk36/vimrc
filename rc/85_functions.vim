function! SOReformat()
    let config_path  = $PL_VIM_PATH
    let config_path .= "/so-astyle.conf"
    let command      = ":%!astyle --options=" . config_path
    execute command
endfunction
