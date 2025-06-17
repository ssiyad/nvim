-- Autoformat
-- https://github.com/stevearc/conform.nvim

return {
  'stevearc/conform.nvim',
  config = function()
    require('config.conform')
  end,
  event = 'VeryLazy',
}

