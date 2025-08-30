-- Neovim Lua plugin with fast and feature-rich surround actions. Part of
-- 'mini.nvim' library.
-- https://github.com/nvim-mini/mini.surround

return {
  'nvim-mini/mini.surround',
  config = function()
    require('mini.surround').setup({
      search_method = 'cover_or_next',
    })
  end,
}
