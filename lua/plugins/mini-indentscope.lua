-- Neovim Lua plugin to visualize and operate on indent scope. Part of 'mini.nvim' library.
-- https://github.com/nvim-mini/mini.indentscope

return {
  'nvim-mini/mini.indentscope',
  config = function()
    local indentscope = require('mini.indentscope')

    indentscope.setup({
      symbol = '│',
      draw = {
        animation = indentscope.gen_animation.none(),
      },
    })
  end,
}
