-- Git wrapper
-- https://github.com/tpope/vim-fugitive

return {
  'tpope/vim-fugitive',
  dependencies = {
    -- GitHub extension for fugitive.vim
    -- https://github.com/tpope/vim-rhubarb
    'tpope/vim-rhubarb',
  },
  event = 'VeryLazy',
}

