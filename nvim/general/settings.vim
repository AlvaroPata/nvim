" set leader keyzs
let mapleader = " "
let localleader = "\\"

set autoindent            " Good auto indent
set autoread              " Load changes made to open files
set background=dark       " tell vim what the background color looks like
set clipboard=unnamedplus " Copy paste between vim and everything else
set cmdheight=2           " More space for displaying messages
set colorcolumn=80        " Display recommended line width
set conceallevel=0        " So that I can see `` in markdown files
set cursorline            " Enable highlighting of the current line
set encoding=utf-8        " The encoding displayed
set expandtab             " Converts tabs to spaces
set fileencoding=utf-8    " The encoding saved to file
set formatoptions-=c      " Stop newline continution of comments
set formatoptions-=o      " Stop newline continution of comments
set formatoptions-=r      " Stop newline continution of comments
set hidden                " Requrired to keep multiple buffers open
set ignorecase            " Ingnore case in word searches
set incsearch             " incremental search
set iskeyword+=-          " Treat dash separated words as a word obj
set mouse=a               " Enable mouse
set nobackup              " This is recommended by coc
set nohls                 " Don't keep highlight after search is done
set noshowmode            " We don't need to see things like -- INSERT -- anymore
set noswapfile            " No annoying swap files
set nowrap
set nowritebackup         " This is recommended by coc
set number                " Line numbers
set pumheight=10          " Makes popup mmenu smaller
set relativenumber        " Relative Numbers
set scrolloff=8           " Better scrolling
set shiftwidth=2          " Change the number of space characters inserted for indentation
set showtabline=2         " Always show tabs
set smartcase             " search uppercases when specified
set smartindent           " Makes indenting smart
set smarttab              " Makes tabbing smarter will realize you have 2 vs 4
set splitbelow            " Horizontal splits will automatically be below
set splitright            " Vertical splits will automatically be on the right
set tabstop=2             " Insert 2 spaces for a tab
set timeoutlen=500        " By default timeoutlen is 1000 ms
set updatetime=300        " Faster completion
syntax enable             " Enables syntax highlighting

syntax on
filetype on
filetype plugin indent on

" auto source when writing to init.vim
au! BufWritePost $MYVIMRC source %

" You can't stop me
cmap w!! w !sudo tee %

au! Filetype htmldjango setlocal commentstring={%\ comment\ %}\ %s\ {%\ endcomment\ %}

