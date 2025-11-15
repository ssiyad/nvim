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
      daily_notes = {
        folder = 'diary',
        workdays_only = false,
      },
      footer = {
        enabled = false,
      },
      ui = {
        enabled = false,
      },
    })

    vim.api.nvim_create_autocmd('User', {
      pattern = 'ObsidianNoteEnter',
      callback = function()
        vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        vim.wo.foldmethod = 'expr'
      end,
    })
  end,
}
