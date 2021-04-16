"                  __
"   __          __/\ \__               __
"  /\_\    ___ /\_\ \ ,_\      __  __ /\_\    ___ ___
"  \/\ \ /' _ `\/\ \ \ \/     /\ \/\ \\/\ \ /' __` __`\
"   \ \ \/\ \/\ \ \ \ \ \_  __\ \ \_/ |\ \ \/\ \/\ \/\ \
"    \ \_\ \_\ \_\ \_\ \__\/\_\\ \___/  \ \_\ \_\ \_\ \_\
"     \/_/\/_/\/_/\/_/\/__/\/_/ \/__/    \/_/\/_/\/_/\/_/
"


set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

source ~/.config/nvim/vim-plug/plugins.vim
source ~/.config/nvim/general/settings.vim
source ~/.config/nvim/keys/keymappings.vim
source ~/.config/nvim/plug-config/start-screen.vim
source ~/.config/nvim/plug-config/fzf-config.vim
source ~/.config/nvim/plug-config/coc.vim
"source ~/.config/nvim/keys/which-key.vim

" python indentation (pep8) {{{
au BufNewFile,BufRead *.py set tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ textwidth=79
    \ expandtab
    \ autoindent
    \ fileformat=unix
" }}}

" indentation for full stack development {{{
au BufNewFile,BufRead,BufWritePre *.js,*.html,*.css set tabstop=2 softtabstop=2 shiftwidth=2
" }}}

" mouse {{{
let g:is_mouse_enabled = 1
noremap <silent> <Leader>m :call ToggleMouse()<CR>
function ToggleMouse()
    if g:is_mouse_enabled == 1
        echo "Mouse OFF"
        set mouse=
        let g:is_mouse_enabled = 0
    else
        echo "Mouse ON"
        set mouse=a
        let g:is_mouse_enabled = 1
    endif
endfunction
" }}}

" color scheme and appearence {{{
filetype on
filetype plugin indent on
colorscheme nord
set cursorline
syntax on
" }}}

" operator-pending mappings {{{
" inside function [b]ody
onoremap b /return<cr>
" inside [p]arenthesis
onoremap p i(
" inside next parenthesis
onoremap in( :<c-u>normal! f(vi(<cr>
" inside last parenthesis
onoremap il( :<c-u>normal! F)vi(<cr>
" inside next square brackets
onoremap in[ :<c-u>normal! f[vi[<cr>
" inside last square brackets
onoremap il[ :<c-u>normal! F]vi[<cr>
" inside next curly brackets
onoremap in{ :<c-u>normal! f{vi{<cr>
" inside last curly brackets
onoremap il{ :<c-u>normal! F}vi{<cr>
" inside next single quotes
onoremap in' :<c-u>normal! f'vi'<cr>
" inside last single quotes
onoremap il' :<c-u>normal! F'vi'<cr>
" inside next double quotes
onoremap in" :<c-u>normal! f"vi"<cr>
" inside last double quotes
onoremap il" :<c-u>normal! F"vi"<cr>
" around next parenthesis
onoremap an( :<c-u>normal! f(va(<cr>
" around last parenthesis
onoremap al( :<c-u>normal! F)va(<cr>
" around next square brackets
onoremap an[ :<c-u>normal! f[va[<cr>
" around last square brackets
onoremap al[ :<c-u>normal! F]va[<cr>
" around next curly brackets
onoremap an{ :<c-u>normal! f{va{<cr>
" around last curly brackets
onoremap al{ :<c-u>normal! F}va{<cr>
" around next single quotes
onoremap an' :<c-u>normal! f'va'<cr>
" around last single quotes
onoremap al' :<c-u>normal! F'va'<cr>
" around next double quotes
onoremap an" :<c-u>normal! f"va"<cr>
" around last double quotes
onoremap al" :<c-u>normal! F"va"<cr>
" }}}

" vimscript file settings {{{
augroup filetype_vim
    autocmd!
    autocmd Filetype vim setlocal foldmethod=marker
augroup END
" }}}

" window navigation {{{
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" }}}

" nerdtree settings {{{
let NERDTreeQuitOnOpen=1
" }}}

" nerdtree git status indicators {{{
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
" }}}

" vim-closetag config {{{
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'
" }}}

" TODO fix filetype detection
" filetypes {{{
" yanked from https://github.com/nvie/vimrc/blob/master/vimrc
augroup html_files "{{{
    au!

    " This function detects, based on HTML content, whether this is a
    " Django template, or a plain HTML file, and sets filetype accordingly
    fun! s:DetectHTMLVariant()
        let n = 1
        while n < 50 && n < line("$")
            " check for django
            if getline(n) =~ '{%\s*\(extends\|load\|block\|if\|for\|include\|trans\)\>'
                set ft=htmldjango.html
                return
            endif
            let n = n + 1
        endwhile
        " go with html
        set ft=html
    endfun

    " Auto-tidy selection
    vnoremap <leader>x :!tidy -q -i --show-errors 0 --show-body-only 1 --wrap 0<cr><cr>

    autocmd BufNewFile,BufRead,BufWritePre *.html,*.htm,*.j2 call s:DetectHTMLVariant()
augroup end " }}}

augroup python_files "{{{
    au!

    " This function detects, based on Python content, whether this is a
    " Django file, which may enabling snippet completion for it
    fun! s:DetectPythonVariant()
        let n = 1
        while n < 50 && n < line("$")
            " check for django
            if getline(n) =~ 'import\s\+\<django\>' || getline(n) =~ 'from\s\+\<django\>\s\+import'
                set ft=python.django
                "set syntax=python
                return
            endif
            let n = n + 1
        endwhile
        " go with html
        set ft=python
    endfun
    autocmd BufNewFile,BufRead *.py call s:DetectPythonVariant()

    " go to imports"
    autocmd BufNewFile,BufRead *.py nnoremap <buffer> <leader>i gg}O
augroup END "}}}
" }}}

" indentLine settings {{{
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

" airline {{{
let g:airline#extensions#tabline#enabled = 1
" }}}

