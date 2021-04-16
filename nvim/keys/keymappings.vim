"   /$$
"  | $$
"  | $$   /$$  /$$$$$$  /$$   /$$  /$$$$$$$
"  | $$  /$$/ /$$__  $$| $$  | $$ /$$_____/
"  | $$$$$$/ | $$$$$$$$| $$  | $$|  $$$$$$
"  | $$_  $$ | $$_____/| $$  | $$ \____  $$
"  | $$ \  $$|  $$$$$$$|  $$$$$$$ /$$$$$$$/
"  |__/  \__/ \_______/ \____  $$|_______/
"                       /$$  | $$
"                      |  $$$$$$/
"                       \______/

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" Escape insert mode withjk
inoremap <silent> jk <esc>

" Escape insert mode and add new line below with jkl
inoremap <silent> JK <esc>o

" close file from normal mode with jk
nnoremap <silent> JK :q<cr>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" save file from normal mode with <leader>s
nnoremap <leader>s :w<cr>
" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" ??????
nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

" edit .vimrc
nnoremap <leader>v :vsplit $MYVIMRC<cr>

" - moves line up
nnoremap <leader>- ddp
" _ moves line down
nnoremap <leader>_ ddkP

" add double quotes around word
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
" add single quotes around word
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
" add single quotes around visually selected word
vnoremap <leader>' c''<esc>hpl
" add double quotes around visually selected word
vnoremap <leader>" c""<esc>hpl

" go to the BOL
nnoremap <leader>H ^
" go to EOL
nnoremap <leader>L $

" Clipboard
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p
"
" nerdtree mappings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

augroup filetype_html
    autocmd!
    autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
augroup END
