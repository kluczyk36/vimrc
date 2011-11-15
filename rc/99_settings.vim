" vim: set ff=unix ft=vim fenc=utf-8:

" tagbar settings
let g:tagbar_usearrows = 1
let g:tagbar_autoshowtag = 1

" c-syntax settings
let c_space_errors = 1
let c_no_curly_error = 1

" c-indent settings
set cinoptions+=l1,b1,g0,(s

" pullproto location for protodef
let g:protodefprotogetter = '$PL_BUNDLE_PATH/ProtoDef/pullproto.pl'

" indent guides
let g:indent_guides_start_level           = 2
let g:indent_guides_guide_size            = 1
let g:indent_guides_enable_on_vim_startup = 1

" gundo
let g:gundo_width = 60

" EasyMotion
let g:EasyMotion_leader_key = '<Leader>'

" NERDTree
let NERDTreeMapUpdir='\u'

" Syntastic
let g:syntastic_enable_signs=1
