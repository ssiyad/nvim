vim.g.mapleader = ' '

vim.opt.autoindent = true
vim.opt.autoread = true
vim.opt.cmdheight = 0
vim.opt.cursorline = true
vim.opt.ff = 'unix'
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.laststatus = 3
vim.opt.mouse = ''
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 0
vim.opt.shortmess:append('WIFS')
vim.opt.signcolumn = 'yes'
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.spell = true
vim.opt.tabstop = 4
vim.opt.termguicolors = true
vim.opt.updatetime = 750
vim.opt.winborder = 'solid'

-- Enable diagnostic message for current line only.
vim.diagnostic.config({
  virtual_text = {
    current_line = true,
  },
})

local git_repo = 'git@github.com:folke/lazy.nvim.git'
local install_path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

if not (vim.uv or vim.loop).fs_stat(install_path) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    '--branch=stable',
    git_repo,
    install_path,
  })
end

vim.opt.runtimepath:prepend(install_path)
require('keymaps')
require('lazy').setup('plugins')
