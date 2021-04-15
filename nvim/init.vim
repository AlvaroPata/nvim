set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath


" global settings {{{
let $LANG='en_UK'
set exrc
set nohls
set relativenumber
set nu
set hidden
set noswapfile
set nobackup
set nowritebackup
set expandtab
set incsearch
set scrolloff=8
set colorcolumn=80
set encoding=utf-8
set autoread
set smartcase
set mouse=a
set nocompatible
" }}}

" plugins {{{
call plug#begin('~/.config/nvim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'ycm-core/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-scripts/loremipsum'
Plug 'vim-scripts/indentpython.vim'
Plug 'joshdick/onedark.vim'
Plug 'vim-scripts/django.vim'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'kien/ctrlp.vim'
Plug 'bitc/vim-bad-whitespace'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'arcticicestudio/nord-vim'
Plug 'Yggdroot/indentLine'
Plug 'honza/vim-snippets'
Plug 'mhinz/vim-startify'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
" Plug 'liuchengxu/vim-which-key'
call plug#end()
" }}}

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

" mappings {{{
let mapleader = ","
let localleader = "\\"
" colon, semicolon
nnoremap ; :
nnoremap <leader>; :
" Escape insert mode with jk
inoremap <silent> jk <esc>
" Escape insert mode and add new line below with jkl
inoremap <silent> JK <esc>o
" close file from normal mode with jk
nnoremap <silent> JK :q<cr>
" display next buffer
nnoremap <silent> <leader>b :bnext<cr>
" close current buffer
nnoremap <silent> <leader>k :bd<cr>
" close without saving
nnoremap <leader>qq :q!<cr>
" save file from normal mode with <leader>s
nnoremap <leader>ss :w<cr>
" <c-u> in normal mode uppercases current word
nnoremap <leader><c-u> viwU
" <c-u> in visual mode uppercases current word
inoremap <leader><c-u> <esc>viwUi
" - moves line up
nnoremap <leader>- ddp
" _ moves line down
nnoremap <leader>_ ddkP
" edit .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" source .vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>
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
augroup filetype_html
    autocmd!
    autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
augroup END
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

" clipboard {{{
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p
" }}}

" coc config {{{
let g:coc_global_extensions = [
    \ 'coc-snippets',
    \ 'coc-pairs',
    \ 'coc-json',
    \ ]

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
" }}}

" coc-prettier {{{
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" }}}

" nerdtree mappings {{{
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
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

"source ~/.config/nvim/keys/which-key.vim
source ~/.config/nvim/plug-config/start-screen.vim
source ~/.config/nvim/plug-config/fzf-config.vim
