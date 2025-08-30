-- Navigate and manipulate file system. Part of 'mini.nvim' library.
-- https://github.com/nvim-mini/mini.files

return {
  'nvim-mini/mini.files',
  config = function()
    local keymap_set = require('utils.keymap_set')
    local files = require('mini.files')

    files.setup()

    keymap_set('n', '<Leader>o', function()
      local buf_name = vim.api.nvim_buf_get_name(0)
      if buf_name == '' then
        files.open()
      else
        files.open(buf_name, false)
      end
    end)
  end,
}
