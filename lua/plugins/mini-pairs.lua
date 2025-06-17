-- Neovim Lua plugin to automatically manage character pairs. Part of
-- 'mini.nvim' library.
-- https://github.com/echasnovski/mini.pairs

return {
  'echasnovski/mini.pairs',
  config = function()
    require('mini.pairs').setup()
  end,
}

