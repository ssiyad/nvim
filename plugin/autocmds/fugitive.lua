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

vim.api.nvim_create_autocmd('BufEnter', {
  group = group,
  desc = 'Open fugitive in its own tab.',
  callback = function()
    if vim.bo.filetype == 'fugitive' then
      vim.cmd('silent! wincmd T')
    end
  end,
})

vim.api.nvim_create_autocmd('BufEnter', {
  group = group,
  desc = 'Open git window in right side.',
  callback = function()
    if vim.bo.filetype == 'git' then
      vim.cmd('silent! wincmd L')
    end
  end,
})
