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
  },
}
