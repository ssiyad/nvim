vim.pack.add({
  'https://github.com/olimorris/codecompanion.nvim',
  'https://github.com/nvim-lua/plenary.nvim',
})

require('codecompanion').setup({
  strategies = {
    chat = {
      adapter = {
        name = 'copilot',
        model = 'gpt-4.1',
      },
    },
    inline = {
      adapter = {
        name = 'copilot',
        model = 'gpt-4.1',
      },
    },
    cmd = {
      adapter = {
        name = 'copilot',
        model = 'gpt-4.1',
      },
    },
  },
})
