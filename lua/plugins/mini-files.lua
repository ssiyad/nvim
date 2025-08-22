-- Navigate and manipulate file system. Part of 'mini.nvim' library.
-- https://github.com/echasnovski/mini.files

return {
  'echasnovski/mini.files',
  config = function()
    local keymap_set = require('utils.keymap_set')
    local files = require('mini.files')

    files.setup()

    keymap_set('n', '<Leader>o', function()
      files.open()
    end)
  end,
}
