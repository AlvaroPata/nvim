require('nvim-tree').setup {
  hijack_cursor = true,
  filters = {
    dotfiles = false,
    custom = { '.git', '.DS_Store', 'node_modules' },
  },
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
}
