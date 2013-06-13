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

" NERDTree
let NERDTreeMapUpdir = '\u'

" PyFlakes
let g:pyflakes_use_quickfix = 0

" Powerline
if has("gui_running")
    let g:Powerline_symbols = 'fancy'
else
    let g:Powerline_symbols = 'compatible'
end
let g:Powerline_cache_dir = $PL_VIM_PATH . '/cache/'

" FuzzyFinder
let g:fuf_dataDir = $PL_VIM_PATH . '/cache/fuf/'
let g:fuf_keyOpenTabpage = '<CR>'
let g:fuf_keyOpen = '<C-l>'
let g:fuf_modesDisable = ['mrufile', 'mrucmd', 'bookmarkfile', 'bookmarkdir', 'tag', 'buffertag', 'taggedfile', 'jumplist', 'changelist', 'quickfix', 'line']

" showmarks
let g:showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ.'`^<>[]\""
let g:showmarks_hlline_lower = 1
