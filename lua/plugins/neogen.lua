-- A better annotation generator. Supports multiple languages and annotation
-- conventions.
-- https://github.com/danymat/neogen

return {
  'danymat/neogen',
  version = '*',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    require('config.neogen')
  end,
  event = 'VeryLazy',
}
