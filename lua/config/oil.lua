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
  keymaps = {
    ['<C-v>'] = { 'actions.select', opts = { vertical = true } },
    ['<C-s>'] = { 'actions.select', opts = { horizontal = true } },
  },
  float = {
    max_width = 120,
    max_height = 20,
    border = 'single',
  },
  default_file_explorer = true,
  restore_win_options = true,
  skip_confirm_for_simple_edits = true,
})

keymap_set('n', '<Leader>o', oil.open_float)
