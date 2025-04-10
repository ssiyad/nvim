local group = vim.api.nvim_create_augroup('FugitiveExt', { clear = true })

vim.api.nvim_create_autocmd('BufEnter', {
  group = group,
  desc = 'Open git commit edit in insert mode.',
  callback = function()
    if vim.bo.filetype == 'gitcommit' then
      vim.cmd('startinsert!')
    end
  end,
})
