-- Neovim Lua plugin to extend and create `a`/`i` textobjects. Part of
-- 'mini.nvim' library.
-- https://github.com/nvim-mini/mini.ai

return {
  'nvim-mini/mini.ai',
  config = function()
    require('mini.ai').setup()
  end,
}
