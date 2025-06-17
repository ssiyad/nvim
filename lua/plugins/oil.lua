-- Edit filesystem like a buffer.
-- https://github.com/stevearc/oil.nvim

return {
  'stevearc/oil.nvim',
  config = function()
    require('config.oil')
  end,
  event = 'VeryLazy',
}

