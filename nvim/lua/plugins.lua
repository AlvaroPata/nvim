return require('packer').startup(function(use)
  -- packer
  use {"wbthomason/packer.nvim"}

  -- telescope
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-telescope/telescope.nvim'

  -- builtin lsp
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

  -- git
  use {"tpope/vim-fugitive"}
  use {"tpope/vim-rhubarb"}
  use {"sgeb/vim-diff-fold"}
  use {
    "lewis6991/gitsigns.nvim",
    config = function()
      require "gitsigns".setup {
        debug_mode = false,
        signs = {
          add = {hl = "GitGutterAdd", text = "?"},
          change = {hl = "GitGutterChange", text = "?"},
          delete = {hl = "GitGutterDelete", text = "_"},
          topdelete = {hl = "GitGutterDelete", text = "?"},
          changedelete = {hl = "GitGutterChangeDelete", text = "~"}
        }
      }
    end
  }

  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }

  -- auto-completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-path'
  use 'saadparwaiz1/cmp_luasnip'

  -- comments
  use 'numToStr/Comment.nvim'

  -- comments integration with treesitter
  use 'JoosepAlviste/nvim-ts-context-commentstring'

  -- lua development
  use 'folke/lua-dev.nvim'

  -- nerd font icons :D
  use 'kyazdani42/nvim-web-devicons'

  -- statusline
  use 'shadmansaleh/lualine.nvim'

  -- file explorer
  use {
      'kyazdani42/nvim-tree.lua',
      config = function() require'nvim-tree'.setup {} end
  }

  -- snippets engine
  use 'L3MON4D3/LuaSnip'

  -- theme
  use 'rose-pine/neovim'

  -- lsp diagnostics
  use 'folke/trouble.nvim'

  -- vimscript plugins
  use 'milisims/nvim-luaref'
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'
  use 'christoomey/vim-system-copy'
end)
