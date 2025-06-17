-- Neovim Lua plugin to extend and create `a`/`i` textobjects. Part of
-- 'mini.nvim' library.
-- https://github.com/echasnovski/mini.ai

return {
  'echasnovski/mini.ai',
  config = function()
    require('mini.ai').setup()
  end,
}

