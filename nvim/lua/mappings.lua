--   /$$
--  | $$
--  | $$   /$$  /$$$$$$  /$$   /$$  /$$$$$$$
--  | $$  /$$/ /$$__  $$| $$  | $$ /$$_____/
--  | $$$$$$/ | $$$$$$$$| $$  | $$|  $$$$$$
--  | $$_  $$ | $$_____/| $$  | $$ \____  $$
--  | $$ \  $$|  $$$$$$$|  $$$$$$$ /$$$$$$$/
--  |__/  \__/ \_______/ \____  $$|_______/
--                       /$$  | $$
--                      |  $$$$$$/
--                       \______/

nnoremap('<SPACE>', '<Nop>')
vim.g.mapleader = ' '

-- remap Y to yank to end of line
nnoremap('Y', 'y$')
vnoremap('Y', 'y$')

-- delete text without yanking
nnoremap('<leader>d', '"_d')
vnoremap('<leader>d', '"_d')

-- turn off search highlighting
nnoremap('<leader>hl', ':nohlsearch<cr>')

-- neovim terminal can exit to normal mode with <esc> now
tnoremap('<esc>', [[<c-\><c-n>]])

-- swap between light and dark themes for rose-pine (Toggle Theme)
nnoremap('<leader>tt', [[<cmd>lua require('rose-pine').toggle()<cr>]])

-- Better nav for omnicomplete
-- inoremap('<expr>', '<c-j> ("\<C-n>")')
-- inoremap('<expr>', '<c-k> ("\<C-p>")')

-- Use alt + hjkl to resize windows
-- nnoremap('<M-j>', '   :resize -2<CR>')
-- nnoremap('<M-k>', '   :resize +2<CR>')
-- nnoremap('<M-h>', '   :vertical resize -2<CR>')
-- nnoremap('<M-l>', '   :vertical resize +2<CR>')

-- close buffer from normal mode with jk
nnoremap('NE', ':bd<cr>')

--[[
" Easy CAPS
inoremap('<c-u>', '<ESC>viwUi')
nnoremap('<c-u>', 'viwU<Esc>')

" TAB in general mode will move to text buffer
nnoremap('<TAB>', ':bnext<CR>')
" BACKSPACE will go back
nnoremap('<BACKSPACE>', ':bprevious<CR>')
--]]

-- save file from normal mode with <leader>s
nnoremap('<leader>s', ':w<cr>')
-- Alternate way to save
nnoremap('<C-s>', ':w<CR>')
-- Alternate way to quit
nnoremap('<C-Q>', ':wq!<CR>')
-- Use control-c instead of escape
nnoremap('<C-c>', '<Esc>')
-- <TAB>: completion.
-- Set in coc plug-config file
-- inoremap('<expr><TAB>', 'pumvisible() ? "\<C-n>" : "\<TAB>"')

-- Better tabbing
vnoremap('<', '<gv')
vnoremap('>', '>gv')

-- Better window navigation
nnoremap('<C-h>', '<C-w>h')
nnoremap('<C-j>', '<C-w>j')
nnoremap('<C-k>', '<C-w>k')
nnoremap('<C-l>', '<C-w>l')

-- ??????
nnoremap('<Leader>o', 'o<Esc>^Da')
nnoremap('<Leader>O', 'O<Esc>^Da')

-- make search use normal PERL regex
nnoremap('/', '/\v')
vnoremap('/', '/\v')

-- edit .vimrc
nnoremap('<leader>v', ':vsplit $MYVIMRC<cr>')

-- - moves line up
nnoremap('<leader>-', 'ddp')
-- _ moves line down
nnoremap('<leader>_', 'ddkP')

-- add double quotes around word
nnoremap('<leader>"', 'viw<esc>a"<esc>bi"<esc>lel')
-- add single quotes around word
nnoremap("<leader>'", "viw<esc>a'<esc>bi'<esc>lel")
-- add single quotes around visually selected word
vnoremap("<leader>'", "c''<esc>hpl")
-- add double quotes around visually selected word
vnoremap('<leader>"', 'c""<esc>hpl')

-- Comment
-- nnoremap('<leader>/', ':Commentary<CR>')
-- vnoremap('<leader>/', ':Commentary<CR>')

-- go to the BOL
nnoremap('<leader>H', '^')
-- go to EOL
nnoremap('<leader>L', '$')

-- Clipboard
nnoremap('<Leader>y', '"*y')
nnoremap('<Leader>p', '"*p')
nnoremap('<Leader>Y', '"+y')
nnoremap('<Leader>P', '"+p')

-- operator-pending mappings
-- inside function [b]ody
onoremap('b', '/return<cr>')
-- inside [p]arenthesis
onoremap('p', 'i(')
-- inside next parenthesis
onoremap('in(', ':<c-u>normal! f(vi(<cr>')
-- inside last parenthesis
onoremap('il(', ':<c-u>normal! F)vi(<cr>')
-- inside next square brackets
onoremap('in[', ':<c-u>normal! f[vi[<cr>')
-- inside last square brackets
onoremap('il[', ':<c-u>normal! F]vi[<cr>')
-- inside next curly brackets
onoremap('in{', ':<c-u>normal! f{vi{<cr>')
-- inside last curly brackets
onoremap('il{', ':<c-u>normal! F}vi{<cr>')
-- inside next single quotes
onoremap("in'", ":<c-u>normal! f'vi'<cr>")
-- inside last single quotes
onoremap("il'", ":<c-u>normal! F'vi'<cr>")
-- inside next double quotes
onoremap('in"', ':<c-u>normal! f"vi"<cr>')
-- inside last double quotes
onoremap('il"', ':<c-u>normal! F"vi"<cr>')
-- around next parenthesis
onoremap('an(', ':<c-u>normal! f(va(<cr>')
-- around last parenthesis
onoremap('al(', ':<c-u>normal! F)va(<cr>')
-- around next square brackets
onoremap('an[', ':<c-u>normal! f[va[<cr>')
-- around last square brackets
onoremap('al[', ':<c-u>normal! F]va[<cr>')
-- around next curly brackets
onoremap('an{', ':<c-u>normal! f{va{<cr>')
-- around last curly brackets
onoremap('al{', ':<c-u>normal! F}va{<cr>')
-- around next single quotes
onoremap("an'", ":<c-u>normal! f'va'<cr>")
-- around last single quotes
onoremap("al'", ":<c-u>normal! F'va'<cr>")
-- around next double quotes
onoremap('an"', ':<c-u>normal! f"va"<cr>')
-- around last double quotes
onoremap('al"', ':<c-u>normal! F"va"<cr>')

-- start Goyo
nnoremap('<Leader>yo', ':Goyo 90<bar> highlight StatusLineNC ctermfg=blue <cr>')

-- telescope keymaps
nnoremap('<leader>k', ":lua require('telescope.builtin').find_files()<CR>")
nnoremap('<leader>h', ":lua require('telescope.builtin').command_history()<CR>")
nnoremap('<leader>b', ":lua require('telescope.builtin').buffers()<CR>")
nnoremap('<leader>g', ":lua require('telescope.builtin').live_grep()<CR>")
nnoremap('<leader>m', ":lua require('telescope.builtin').marks()<CR>")

-- nvim-tree keymaps
nnoremap('<leader>n', ':NvimTreeToggle<CR>')

-- barbar keymaps
nnoremap('<leader>,', ':BufferLineCyclePrev<cr>')
nnoremap('<leader>.', ':BufferLineCycleNext<cr>')
nnoremap('<leader><leader>,', ':BufferLineMovePrev<CR>')
nnoremap('<leader><leader>.', ' :BufferLineMoveNext<CR>')
