local handlers = {
  ['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, {
    border = 'solid',
  }),
}

return handlers
