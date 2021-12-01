" NERDCommenter settings

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDCustomDelimiters = { 'html': { 'left': '<!--', 'right': '-->' } }

" Align comment delimiters to the left instead of following code indentation
let g:NERDDefaultAlign = 'left'


" -------------------------------------
" Context filetypes for NERDCommenter and more
" -------------------------------------
if !exists('g:context_filetype#same_filetypes')
  let g:context_filetype#filetypes = {}
endif
let g:context_filetype#filetypes.svelte =
\ [
\   {'filetype' : 'javascript', 'start' : '<script>', 'end' : '</script>'},
\   {
\     'filetype': 'typescript',
\     'start': '<script\%( [^>]*\)\? \%(ts\|lang="\%(ts\|typescript\)"\)\%( [^>]*\)\?>',
\     'end': '</script>',
\   },
\   {'filetype' : 'css', 'start' : '<style \?.*>', 'end' : '</style>'},
\ ]


" -------------------------------------
" NERDCommenter
" -------------------------------------
let g:ft = ''
fu! NERDCommenter_before()
  if (&ft == 'html') || (&ft == 'svelte') || (&ft == 'vue')
    let g:ft = &ft
    let cfts = context_filetype#get_filetypes()
    if len(cfts) > 0
      if cfts[0] == 'svelte'
        let cft = 'html'
      elseif cfts[0] == 'scss'
        let cft = 'css'
      else
        let cft = cfts[0]
      endif
      exe 'setf ' . cft
    endif
  endif
endfu
fu! NERDCommenter_after()
  if (g:ft == 'html') || (g:ft == 'svelte') || (g:ft == 'vue')
    exec 'setf ' . g:ft
    let g:ft = ''
  endif
endfu
