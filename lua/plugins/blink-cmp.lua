-- Performant, batteries-included completion plugin for Neovim.
-- https://github.com/saghen/blink.cmp

return {
  'saghen/blink.cmp',
  version = '*',
  opts = require('config.cmp'),
  event = 'VeryLazy',
}

