
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

Plug 'vimwiki/vimwiki'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'airblade/vim-rooter'
Plug 'preservim/nerdtree'

Plug 'Yggdroot/indentLine'
Plug 'alvan/vim-closetag'
Plug 'bitc/vim-bad-whitespace'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/loremipsum'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'arcticicestudio/nord-vim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'liuchengxu/space-vim-theme'
Plug 'KeitaNakamura/neodark.vim'

Plug 'vim-scripts/django.vim'
Plug 'vim-scripts/indentpython.vim'

Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/gv.vim'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'easymotion/vim-easymotion'
Plug 'fisadev/vim-isort'
Plug 'kien/ctrlp.vim'
Plug 'mhinz/vim-startify'
Plug 'mattn/calendar-vim'
Plug 'junegunn/goyo.vim'

" Plug 'liuchengxu/vim-which-key'
" Plug 'karoliskoncevicius/vim-sendtowindow'

call plug#end()
