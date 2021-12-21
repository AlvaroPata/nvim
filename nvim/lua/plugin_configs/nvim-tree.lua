require('nvim-tree').setup {
  hijack_cursor = true,
  filters = {
    dotfiles = false,
    custom = { '.git', '.DS_Store', 'node_modules' },
  },
}
