-- Work with diff hunks. Part of 'mini.nvim' library.
-- https://github.com/nvim-mini/mini.diff
return {
  'nvim-mini/mini.diff',
  version = false,
  config = function()
    require('mini.diff').setup({
      view = {
        style = 'number',
      },
    })
  end,
}
