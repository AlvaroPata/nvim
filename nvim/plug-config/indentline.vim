nnoremap <silent> <localleader>i :call IndentLines_LeadingSpace_Toggle()<cr>

function! IndentLines_LeadingSpace_Toggle()
    IndentLinesToggle
    LeadingSpaceToggle
endfunction

" indentLine disabled by default
let g:indentLine_enabled = 0
let g:indentLine_leadingSpaceEnabled = 0
let g:indentLine_fileTypeExlude = ["vimwiki", "nerdtree", "help", "diff", "text", "sh"]
let g:indentLine_bufTypeExclude = ["help", "terminal"]
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_leadingSpaceChar = "•"
" }}}

