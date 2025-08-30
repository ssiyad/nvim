-- Neovim Lua plugin to automatically manage character pairs. Part of
-- 'mini.nvim' library.
-- https://github.com/nvim-mini/mini.pairs

return {
  'nvim-mini/mini.pairs',
  config = function()
    require('mini.pairs').setup()
  end,
}
