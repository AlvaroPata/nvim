-- autoinstall packer.nvim if not already installed
local fn = vim.fn
local cmd = vim.cmd
local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system {
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path,
  }
end

-- make sure that globals.lua is required first, as we want to use the
-- functions and helpers we add there EVERYWHERE in our configuration
require 'globals'
-- everything else here, the order *shouldn't* matter as much I prefer to put
-- plugins as far towards the end of my require statements so that if you
-- introduce a bug on accident, its likely that the rest of your config works
-- fine other than some plugin configuration that is going awry
require 'settings'
require 'plugins'
require 'mappings'
require 'autocmds'
require 'plugin_configs'

-- load vimscript configs
cmd 'runtime! vimscript/**'

-- colorscheme
vim.g.disable_background = true
-- set my colorscheme to the correct varient depending on whether it's between
-- 9am-5pm or not
-- local current_hour = tonumber(vim.fn.strftime '%H')
-- local is_daytime = current_hour > 9 and current_hour < (12 + 5)
-- print('is daytime', is_daytime)
-- vim.g.rose_pine_variant = is_daytime and 'dawn' or ''
vim.cmd 'colorscheme rose-pine'
