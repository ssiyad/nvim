local oil = require('oil')
local keymap_set = require('utils.keymap_set')

oil.setup({
  columns = {
    'type',
    'icon',
    'permissions',
    'size',
    'mtime',
  },
  float = {
    border = 'solid',
  },
  preview = {
    border = 'solid',
  },
  default_file_explorer = false,
  restore_win_options = true,
  skip_confirm_for_simple_edits = true,
})

keymap_set('n', '-', oil.toggle_float)
