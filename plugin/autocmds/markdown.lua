local augroup = vim.api.nvim_create_augroup('notes-markdown', {
  clear = true,
})

vim.api.nvim_create_autocmd('BufEnter', {
  group = augroup,
  pattern = '*notes/*.md',
  callback = function()
    vim.o.conceallevel = 2
  end,
})
