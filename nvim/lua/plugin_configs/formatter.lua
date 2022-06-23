-- configuration options for stylua
local filetype_configs = {
  lua = {
    function()
      return {
        exe = 'stylua',
        args = {
          -- '--config-path ~/dotfiles/stylua/stylua.toml',
          '--search-parent-directories',
          '-',
        },
        stdin = true,
      }
    end,
  },
  go = {
    function()
      return {
        exe = 'gofmt',
        args = {},
        stdin = true,
      }
    end,
  },
  python = {
    function()
      return {
        exe = 'black',
        args = { '_' },
        stdin = true,
      }
    end,
    function()
      return {
        exe = 'python3 -m autopep8',
        args = {
          '--in-place --aggressive --aggressive',
          vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
        },
        stdin = false,
      }
    end,
  },
}

-- configuration options for prettier
local prettier_config = {
  function()
    return {
      exe = 'prettier',
      args = {
        '--config-precedence',
        'prefer-file',
        '--print-width',
        vim.bo.textwidth,
        '--stdin-filepath',
        vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
      },
      stdin = true,
    }
  end,
}

-- add a prettier_config for all js/ts/vue/svelte filetypes
for _, ft in pairs {
  'javascript',
  'javascriptreact',
  'typescript',
  'typescriptreact',
  'svelte',
  'vue',
  'html',
  'css',
  'astro',
} do
  filetype_configs[ft] = prettier_config
end

-- require formatter.nvim
require('formatter').setup {
  logging = false,
  filetype = filetype_configs,
}

-- call formatter.nvim automatically on save
vim.cmd [[
augroup AutoFormatting
  au!
  au BufWritePost *.py,*.js,*.jsx,*.ts,*.tsx,*.svelte,*.vue,*.lua,*.go FormatWrite
augroup END
]]
