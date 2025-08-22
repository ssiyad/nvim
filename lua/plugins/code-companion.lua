-- ✨ AI-powered coding, seamlessly in Neovim
-- https://github.com/olimorris/codecompanion.nvim

return {
  'olimorris/codecompanion.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  opts = {
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
    display = {
      chat = {
        window = {
          position = 'right',
          width = 0.5,
        },
      },
    },
  },
}
