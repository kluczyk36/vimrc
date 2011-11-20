" vim: set ff=unix ft=vim fenc=utf-8:

set statusline=%*%F%<
set statusline+=\ (%{&ff},%{&fenc},%{&ft}%M)
set statusline+=%=
set statusline+=%-23.(line\ %l\ column\ %c%V%)
set statusline+=\ %P
