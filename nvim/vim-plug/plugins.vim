
"  $$$$$$$\  $$\                     $$\
"  $$  __$$\ $$ |                    \__|
"  $$ |  $$ |$$ |$$\   $$\  $$$$$$\  $$\ $$$$$$$\   $$$$$$$\
"  $$$$$$$  |$$ |$$ |  $$ |$$  __$$\ $$ |$$  __$$\ $$  _____|
"  $$  ____/ $$ |$$ |  $$ |$$ /  $$ |$$ |$$ |  $$ |\$$$$$$\
"  $$ |      $$ |$$ |  $$ |$$ |  $$ |$$ |$$ |  $$ | \____$$\
"  $$ |      $$ |\$$$$$$  |\$$$$$$$ |$$ |$$ |  $$ |$$$$$$$  |
"  \__|      \__| \______/  \____$$ |\__|\__|  \__|\_______/
"                          $$\   $$ |
"                          \$$$$$$  |
"                           \______/

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -flo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/autoload/plugged')
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
Plug 'tweekmonster/django-plus.vim'
Plug 'tpop/vim-comentary'
" Plug 'liuchengxu/vim-which-key'
call plug#end()
