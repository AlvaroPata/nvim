augroup filetype_vim
    autocmd!
    autocmd Filetype vim setlocal foldmethod=marker
augroup END

augroup python_files
    autocmd!
    autocmd FileType python call DetectPythonVariant()
    " autocmd BufRead,BufEnter *.py call DetectPythonVariant()
augroup END

augroup html_files
    autocmd!
    autocmd FileType html call DetectHTMLVariant()
    " autocmd BufRead,BufEnter *.html,*.htm,*.j2 call DetectHTMLVariant()
augroup END

" This function detects, based on Python content, whether this is a
" Django file, which may enabling snippet completion for it
fun! DetectPythonVariant()
    let n = 1
    while n < 50 && n < line("$")
        " check for django
        if getline(n) =~ 'import\s\+\<django\>' || getline(n) =~ 'from\s\+\<django\>'
            set ft=python.django
            return
        endif
        let n = n + 1
    endwhile
    " go with html
    set ft=python
endfun

" This function detects, based on HTML content, whether this is a
" Django template, or a plain HTML file, and sets filetype accordingly
fun! DetectHTMLVariant()
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
