-- Improved fzf.vim written in lua.
-- https://github.com/ibhagwan/fzf-lua?tab=readme-ov-file

return {
  'ibhagwan/fzf-lua',
  config = function()
    require('config.fzf')
  end,
  event = 'VeryLazy',
}

