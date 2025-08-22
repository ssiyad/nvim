
return {
  'danymat/neogen',
  version = '*',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    local neogen = require('neogen')
    local keymap_set = require('utils.keymap_set')

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

    keymap_set('n', '<Leader>d', neogen.generate)
  end,
  event = 'VeryLazy',
}
