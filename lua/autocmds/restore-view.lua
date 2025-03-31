local group = vim.api.nvim_create_augroup('RestoreView', { clear = true })

local function is_valid_file()
  return vim.fn.getftype(vim.api.nvim_buf_get_name(0)) == 'file'
end

vim.api.nvim_create_autocmd('BufWinLeave', {
  group = group,
  desc = 'Save view on buffer leave',
  callback = function()
    if is_valid_file() then
      vim.cmd('silent! mkview')
    end
  end,
})

vim.api.nvim_create_autocmd('BufWinEnter', {
  group = group,
  desc = 'Restore view on buffer enter',
  callback = function()
    if is_valid_file() then
      vim.cmd('silent! loadview')
    end
  end,
})
