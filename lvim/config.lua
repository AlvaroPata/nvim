-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.transparent_window = true
lvim.format_on_save.enabled = true

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "eslint", filetypes = { "typescript", "typescriptreact" } },
  { name = "typos" }
}

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = "prettier",
    filetypes = { "typescript", "typescriptreact" },
  },
}

vim.opt.spell = true
vim.opt.spelllang = 'en_us'
vim.opt.spelloptions = 'camel'

lvim.plugins = {
  { "tpope/vim-surround" },
  { "rose-pine/neovim",  name = "rose-pine" },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
}

lvim.builtin.nvimtree.setup.view.adaptive_size = true
lvim.colorscheme = 'rose-pine'
