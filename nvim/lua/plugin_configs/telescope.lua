local actions = require("telescope.actions")
require("telescope").setup{
  defaults = {
    mappings = {
      i = {
        ['<esc>'] = actions.close,
        ['<C-k>'] = actions.move_selection_next,
        ['<C-j>'] = actions.move_selection_previous,
      },
    },
  }
}
