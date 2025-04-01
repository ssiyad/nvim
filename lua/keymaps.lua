local keymap_set = require('utils.keymap_set')

keymap_set('n', '<Leader>l', ':noh<CR>')
keymap_set('n', '<Leader>t', ':vs | term<CR>')

-- Window navigation mappings.
keymap_set('n', '<C-h>', '<C-w>h')
keymap_set('n', '<C-j>', '<C-w>j')
keymap_set('n', '<C-k>', '<C-w>k')
keymap_set('n', '<C-l>', '<C-w>l')

-- Terminal window navigation mappings.
keymap_set('t', '<C-h>', '<C-\\><C-N><C-w>h')
keymap_set('t', '<C-j>', '<C-\\><C-N><C-w>j')
keymap_set('t', '<C-k>', '<C-\\><C-N><C-w>k')
keymap_set('t', '<C-l>', '<C-\\><C-N><C-w>l')
