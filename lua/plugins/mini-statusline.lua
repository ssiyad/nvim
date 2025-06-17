-- Neovim Lua plugin with minimal and fast statusline. Part of 'mini.nvim'
-- library.
-- https://github.com/echasnovski/mini.statusline

return {
  'echasnovski/mini.statusline',
  config = function()
    require('config.statusline')
  end,
}
