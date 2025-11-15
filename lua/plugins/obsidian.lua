return {
  'obsidian-nvim/obsidian.nvim',
  version = '*',
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    legacy_commands = false,
    workspaces = {
      {
        name = 'inbox',
        path = '~/notes/inbox',
      },
      {
        name = 'frappe',
        path = '~/notes/frappe',
      },
    },
    footer = {
      enabled = false,
    },
  },
  config = function(_, opts)
    require('obsidian').setup(opts)

    vim.api.nvim_create_autocmd('User', {
      pattern = 'ObsidianNoteEnter',
      callback = function()
        vim.wo.conceallevel = 2
        vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        vim.wo.foldmethod = 'expr'
      end,
    })
  end,
}
