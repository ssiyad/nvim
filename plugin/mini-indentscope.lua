vim.pack.add({ 'https://github.com/nvim-mini/mini.indentscope' })

local indentscope = require('mini.indentscope')

indentscope.setup({
  symbol = '│',
  draw = {
    animation = indentscope.gen_animation.none(),
  },
})
