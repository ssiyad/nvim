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
  confirmation = {
    border = 'solid',
  },
  default_file_explorer = true,
  restore_win_options = true,
  skip_confirm_for_simple_edits = true,
})

keymap_set('n', '-', oil.open)
