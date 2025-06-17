-- Use your Neovim like using Cursor AI IDE!
-- https://github.com/yetone/avante.nvim

return {
  'yetone/avante.nvim',
  event = 'VeryLazy',
  version = false,
  opts = require('config.avante'),
  dependencies = {
    'Kaiser-Yang/blink-cmp-avante',
    'MeanderingProgrammer/render-markdown.nvim',
    'MunifTanjim/nui.nvim',
    'ibhagwan/fzf-lua',
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
}
