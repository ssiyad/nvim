-- Neovim Lua plugin with fast and feature-rich surround actions. Part of
-- 'mini.nvim' library.
-- https://github.com/echasnovski/mini.surround

return {
  'echasnovski/mini.surround',
  config = function()
    require('mini.surround').setup()
  end,
}

