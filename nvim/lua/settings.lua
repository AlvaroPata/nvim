-- aliases for Lua API functions we will use a lot!
local opt = vim.opt
local o = vim.o

-- settings
vim.cmd [[
  syntax on
  filetype plugin indent on
]]
vim.g.mapleader = ' '
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

-- colorscheme
vim.g.rose_pine_variant = ''
vim.g.rose_pine_disable_background = true
vim.cmd 'colorscheme rose-pine'

-- emmet
-- vim.g.user_emmet_leader = ','

-- nvim-tree
vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_highlight_opened_files = 1
vim.g.nvim_tree_root_folder_modifier = ':~'
vim.g.nvim_tree_add_trailing = 1
vim.g.nvim_tree_group_empty = 1
vim.g.nvim_tree_disable_window_picker = 1
vim.g.nvim_tree_icon_padding = ' '
vim.g.nvim_tree_symlink_arrow = ' >> '
vim.g.nvim_tree_respect_buf_cwd = 1
vim.g.nvim_tree_create_in_closed_folder = 0
vim.g.nvim_tree_refresh_wait = 500
vim.g.nvim_tree_window_picker_exclude = { filetype = { 'notify', 'packer', 'qf' }, buftype = { 'terminal' } }
-- Dictionary of buffer option names mapped to a list of option values that
-- indicates to the window picker that the buffer's window should not be
-- selectable.
vim.g.nvim_tree_special_files = { ['README.md'] = 1, Makefile = 1, MAKEFILE = 1 }
vim.g.nvim_tree_show_icons = {
  git = 1,
  folders = 1,
  files = 1,
  folder_arrows = 0,
}
