-- Work with diff hunks. Part of 'mini.nvim' library.
-- https://github.com/echasnovski/mini.diff
return {
  'echasnovski/mini.diff',
  version = false,
  config = function()
    require('mini.diff').setup()
  end,
}
