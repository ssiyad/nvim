
return {
  'danymat/neogen',
  version = '*',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
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
  end,
  event = 'VeryLazy',
}
