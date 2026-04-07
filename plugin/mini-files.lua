vim.pack.add({ 'https://github.com/nvim-mini/mini.files' })

local files = require('mini.files')

files.setup()

vim.keymap.set('n', '<Leader>o', function()
  local buf_name = vim.api.nvim_buf_get_name(0)
  if buf_name == '' then
    files.open()
  else
    files.open(buf_name, false)
  end
end, { noremap = true, silent = true })
