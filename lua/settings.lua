-- Leader key.
vim.g.mapleader = ' '

vim.opt.autoindent = true
vim.opt.autoread = true
vim.opt.cmdheight = 0
vim.opt.cursorline = true
vim.opt.ff = 'unix'
vim.opt.foldexpr = 'v:lua.vim.lsp.foldexpr()'
vim.opt.foldlevel = 99
vim.opt.foldmethod = 'expr'
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
vim.opt.winborder = 'single'
vim.opt.updatetime = 750

-- Enable diagnostic message for current line only.
vim.diagnostic.config({
  virtual_text = {
    current_line = true,
  },
})
