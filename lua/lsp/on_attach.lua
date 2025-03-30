local lsp = vim.lsp
local keymap_set = require('utils.keymap_set')

local function f(client, bufnr)
  require('lsp.functions.float_diagnostics')
  require('lsp.functions.symbol_highlight')(client, bufnr)

  keymap_set('n', 'grd', lsp.buf.definition)
end

return f
