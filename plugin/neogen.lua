vim.pack.add({ 'https://github.com/danymat/neogen' })

local neogen = require('neogen')

neogen.setup({
  enabled = true,
  languages = {
    python = {
      template = {
        annotation_convention = 'reST',
      },
    },
  },
})

vim.keymap.set('n', '<Leader>d', neogen.generate, { noremap = true, silent = true })
