local fzf = require('fzf-lua')
local keymap_set = require('utils.keymap_set')

fzf.setup({
  keymap = {
    fzf = {
      ['ctrl-a'] = 'toggle-all',
      ['ctrl-q'] = 'accept',
    },
  },
  winopts = {
    border = 'solid',
    number = false,
    relativenumber = false,
    preview = {
      border = 'solid',
      number = true,
      relativenumber = false,
    },
  },
})

keymap_set('n', '<Leader>ff', fzf.files)
keymap_set('n', '<Leader>fg', fzf.live_grep)
