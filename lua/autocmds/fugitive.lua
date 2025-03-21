vim.api.nvim_create_autocmd('BufEnter', {
  desc = 'Open git commit edit in insert mode',
  callback = function()
    if vim.bo.filetype == 'gitcommit' then
      vim.cmd('startinsert!')
    end
  end,
})
