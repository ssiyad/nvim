vim.pack.add({ { src = 'https://github.com/nvim-treesitter/nvim-treesitter', version = 'main' } })

local ts = require('nvim-treesitter')

-- List of parsers to ensure are installed.
local parsers = {
  'css',
  'fish',
  'go',
  'html',
  'javascript',
  'jsdoc',
  'json',
  'json5',
  'lua',
  'markdown',
  'markdown_inline',
  'python',
  'regex',
  'rust',
  'tsx',
  'typescript',
  'vue',
}

-- Get uninstalled parsers from the list.
local installed = ts.get_installed()
local to_install = vim
  .iter(parsers)
  :filter(function(parser)
    return not vim.tbl_contains(installed, parser)
  end)
  :totable()

-- Install the missing parsers.
ts.install(to_install)

-- Enable syntax highlighting for the specified parsers.
vim.api.nvim_create_autocmd('FileType', {
  pattern = parsers,
  callback = function()
    vim.treesitter.start()
    vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
    vim.wo.foldmethod = 'expr'
    vim.wo.foldlevel = 99
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})

-- Update parsers when the plugin is updated.
vim.api.nvim_create_autocmd('PackChanged', {
  callback = function(ev)
    local name, kind = ev.data.spec.name, ev.data.kind
    if name == 'nvim-treesitter' and kind == 'update' then
      vim.cmd('TSUpdate')
    end
  end,
})
