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
colorscheme tokyonight

set cursorline
let g:airline#extensions#tabline#enabled = 1
