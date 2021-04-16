autocmd BufNewFile,BufRead *.html,*.htm,*.j2 call s:DetectHTMLVariant()

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
