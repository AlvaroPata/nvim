" set leader keyzs
let mapleader = " "
let localleader = "\\"

syntax enable                           " Enables syntax highlighting
set hidden                              " Requrired to keep multiple buffers open
set nowrap
set encoding=utf-8                      " The encoding displayed
set fileencoding=utf-8                  " The encoding saved to file
set pumheight=10                        " Makes popup mmenu smaller
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                        " Treat dash separated words as a word obj
set mouse=a                             " Enable mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be on the right
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set number                              " Line numbers
set relativenumber                      " Relative Numbers
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set noswapfile                          " No annoying swap files
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=c                   " Stop newline continution of comments
set formatoptions-=r                   " Stop newline continution of comments
set formatoptions-=o                   " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
set incsearch                           " incremental search
set nohls                               " Don't keep highlight after search is done
set ignorecase                          " Ingnore case in word searches
set smartcase                           " search uppercases when specified
set scrolloff=8                         " Better scrolling
set colorcolumn=80                      " Display recommended line width
set autoread                            " Load changes made to open files

syntax on
filetype on
filetype plugin indent on

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" You can't stop me
cmap w!! w !sudo tee %
