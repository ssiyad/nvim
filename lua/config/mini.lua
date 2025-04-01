-- Comment.
require('mini.comment').setup()

-- Dev icons.
local icons = require('mini.icons')
icons.setup()
icons.mock_nvim_web_devicons()

-- Diff.
require('mini.diff').setup()

-- Indent.
require('mini.indentscope').setup({
  draw = {
    animation = function()
      return 0
    end,
  },
  symbol = '│',
})

-- Autopairs.
require('mini.pairs').setup()

-- Surround.
require('mini.surround').setup()
