-- https://github.com/neovim/neovim/pull/22668
vim.loader.enable()

-- settings
require('settings')

-- plugins
require('plugins')

-- keymaps
require('keymaps')

-- auto commands
require('autocmds')

-- lsp config
require('lsp')
