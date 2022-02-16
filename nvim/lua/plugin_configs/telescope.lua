local actions = require 'telescope.actions'
require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ['<esc>'] = actions.close,
        ['<C-n>'] = actions.move_selection_next,
        ['<C-e>'] = actions.move_selection_previous,
      },
    },
  },
}
