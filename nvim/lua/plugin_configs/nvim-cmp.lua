-- plugin modules used in this file
local cmp = require 'cmp'
local lspkind = require 'lspkind'
local cmp_autopairs = require 'nvim-autopairs.completion.cmp'

-- setup nvim-cmp
cmp.setup {
  window = {
    documentation = {
      border = 'double',
    },
  },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  formatting = {
    format = lspkind.cmp_format {
      with_text = true,
      maxwidth = math.floor(vim.api.nvim_win_get_width(0) / 2),
      maxheight = math.floor(vim.api.nvim_win_get_height(0) / 3 * 2),
      menu = {
        buffer = '[buf]',
        nvim_lsp = '[lsp]',
        luasnip = '[snip]',
        nvim_lua = '[lua]',
        latex_symbols = '[latex]',
      },
    },
  },
  mapping = {
    ['<c-p>'] = cmp.mapping.select_prev_item(),
    ['<c-n>'] = cmp.mapping.select_next_item(),
    ['<c-d>'] = cmp.mapping.scroll_docs(-4),
    ['<c-u>'] = cmp.mapping.scroll_docs(4),
    ['<c-e>'] = cmp.mapping.complete(),
    ['<c-y>'] = cmp.mapping.close(),
    ['<c-k>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
  },
  sources = {
    -- { name = 'nvim_lua' },
    { name = 'nvim_lsp' },
    { name = 'path' },
    { name = 'luasnip' },
    {
      name = 'buffer',
      keyword_length = 4,
      max_item_count = 12,
    },
  },
  experimental = {
    native_menu = false,
    ghost_text = false,
    -- {
    --   hl_group = 'CmpGhostText',
    -- },
  },
}

-- autopairs
cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done { map_char = { tex = '' } })
cmp_autopairs.lisp[#cmp_autopairs.lisp + 1] = 'racket'
