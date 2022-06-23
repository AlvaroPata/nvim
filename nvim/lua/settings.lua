-- aliases for Lua API functions we will use a lot!
local opt = vim.opt
local o = vim.o

-- settings
vim.cmd [[
  syntax on
  filetype plugin indent on
]]
vim.g.vimsyn_embed = 'lPr'

o.autoindent = true
o.autoread = true
o.clipboard = 'unnamedplus'
o.cmdheight = 2
o.colorcolumn = '80'
o.completeopt = 'menu,menuone,noinsert'
o.cursorline = true
o.encoding = 'utf-8'
o.errorbells = false
o.expandtab = true
o.fileencoding = 'utf-8'
o.foldmethod = 'manual'
o.hidden = true
o.hls = false
o.ignorecase = true
o.inccommand = 'split'
o.incsearch = true
o.laststatus = 2
o.lazyredraw = true
o.mouse = 'n'
o.number = true
o.path = '.,**'
o.relativenumber = true
o.scrolloff = 8
o.shiftwidth = 2
o.showmode = false
o.showtabline = 1
o.signcolumn = 'yes'
o.smartcase = true
o.smartindent = true
o.softtabstop = 2
o.splitbelow = true
o.splitright = true
o.swapfile = false
o.tabstop = 2
o.termguicolors = true
o.timeoutlen = 500
o.updatetime = 300
o.wildignore = '*/node_modules/*,*/.git/*,DS_Store,*/venv/*,*/__pycache__/*,*.pyc'
o.wildmenu = true
o.wildmode = 'full'
o.wildoptions = 'pum'
o.wrap = false
o.writebackup = false
opt.formatoptions:append 'jnrql'
opt.formatoptions:remove '2tac'
opt.iskeyword:append '-'
opt.shortmess:append 'c'
