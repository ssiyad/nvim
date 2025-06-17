-- Automatic indentation style detection
-- https://github.com/NMAC427/guess-indent.nvim

return {
  'nmac427/guess-indent.nvim',
  config = function()
    require('guess-indent').setup({})
  end,
}

