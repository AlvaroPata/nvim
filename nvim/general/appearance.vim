" color scheme and appearence

" if strftime('%H') >= 7 && strftime('%H') < 19
"   set background=light
" else
"   set background=dark
" endif
" set background=dark

set termguicolors
" colorscheme neodark
let g:tokyonight_style = 'storm'
let g:tokyonight_enable_italic=1
let g:tokyonight_transparent_background=1
colorscheme tokyonight

set cursorline
let g:airline#extensions#tabline#enabled = 1
