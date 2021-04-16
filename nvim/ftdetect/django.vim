autocmd BufNewFile,BufRead *.py call s:DetectPythonVariant()
autocmd BufNewFile,BufRead *.py echom "django script should be working"
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
