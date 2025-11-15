return {
  'obsidian-nvim/obsidian.nvim',
  version = '*',
  config = function()
    require('obsidian').setup({
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
    })

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
