" based on https://github.com/gkz/vim-ls/blob/master/indent/ls.vim

let s:MAX_LOOKBACK = 50
let s:OPEN_PARENS  = '(\|{\|\['
let s:CLOSE_PARENS = ')\|}\|\]'
let s:MATCH_PARENS = {'(': ')', '{': '}', '[': ']'}

function! s:SyntaxName(linenum, col)
    return synIDattr(synIDtrans(synID(a:linenum, a:col, 1)), 'name')
endfunction

function! s:IsComment(linenum, col)
    return s:SyntaxName(a:linenum, a:col) == 'Comment'
endfunction

function! s:IsString(linenum, col)
    return s:SyntaxName(a:linenum, a:col) == 'Constant'
endfunction

function! s:IsCommentOrString(linenum, col)
    return s:SyntaxName(a:linenum, a:col) =~ 'Comment\|Constant'
endfunction

function! s:IsCommentLine(linenum)
    " Check the first non-whitespace character.
    return s:IsComment(a:linenum, indent(a:linenum) + 1)
endfunction

function! s:ShouldSkip(startlinenum, linenum, col)
    if s:IsCommentOrString(a:linenum, a:col)
        return 1
    endif

    return 0
endfunction

function! s:MaxLookback(startlinenum)
    return max([1, a:startlinenum - s:MAX_LOOKBACK])
endfunction

function! s:SkipExpr(startlinenum)
    return "s:ShouldSkip(" . a:startlinenum . ", line('.'), col('.'))"
endfunction

function! s:SearchPair(start, end, flags)
    call cursor(0, 1)
    let startlinenum = line('.')
    return searchpair(a:start, '', a:end, a:flags, s:SkipExpr(startlinenum), s:MaxLookback(startlinenum))
endfunction

function! s:SearchPairPos(start, end, flags)
    call cursor(0, 1)
    let startlinenum = line('.')
    return searchpairpos(a:start, '', a:end, a:flags, s:SkipExpr(startlinenum), s:MaxLookback(startlinenum))
endfunction

function! s:GetTrimmedLine(linenum)
    let content = getline(a:linenum)
    let content = substitute(content, '^\s\+', '', '')
    let content = substitute(content, '\s\+$', '', '')
    return content
endfunction

function! s:GetCurrentNestLevel()
    return s:SearchPair(s:OPEN_PARENS, s:CLOSE_PARENS, 'nbWrm')
endfunction

function! s:GetCharAtPos(lnum, col)
    return getline(a:lnum)[a:col - 1]
endfunction

function! s:GetCurrentlyOpenParen()
    let [lnum, col] = s:SearchPairPos(s:OPEN_PARENS, s:CLOSE_PARENS, 'nbW')
    return s:GetCharAtPos(lnum, col)
endfunction

function! s:IsClosingParenLine()
    let current = s:GetCurrentlyOpenParen()
    let ending  = s:MATCH_PARENS[current]
    let line    = s:GetTrimmedLine(line('.'))

    " if matching parenthesis starts this line
    return line[0] == ending
endfunction

function! PlGetLispIndent()
    let old_cursor = getcurpos()

    " indentation is based on open parentheses
    " for normal lines it's trivial <open parentheses> * shiftwidth
    " for lines that are entirely closing parens the level decreases by one
    let indent = s:GetCurrentNestLevel()

    if s:IsClosingParenLine()
        let indent = indent - 1
    end

    call setpos('.', old_cursor)
    return indent * &shiftwidth
endfunction
