vim.api.nvim_create_autocmd('TermOpen', {
  desc = 'Open terminal in insert mode',
  callback = function()
    vim.cmd('startinsert!')
  end,
})
