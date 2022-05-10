require('nvim-lsp-installer').setup {}

local lspconfig = require 'lspconfig'

-- local tsutils = require 'ts-utils'

local function on_attach(client, bufnr)
  -- set up buffer keymaps, etc.
end

-- lspconfig.tsserver.setup {
--   init_options = { hostInfo = 'nvim' },
--   on_attach = function(client, bufnr)
--     tsutils.setup {}
--     tsutils.setup_client(client)
--   end,
-- }

lspconfig.sumneko_lua.setup {
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' },
      },
    },
  },
}
