-- Icon provider. Part of 'mini.nvim' library.
-- https://github.com/nvim-mini/mini.icons

return {
  'nvim-mini/mini.icons',
  config = function()
    local icons = require('mini.icons')
    icons.setup()
    icons.mock_nvim_web_devicons()
  end,
}
