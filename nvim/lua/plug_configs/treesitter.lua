local configs = require"nvim-treesitter.configs"
configs.setup {
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  ensure_installed = 'maintained',
}
