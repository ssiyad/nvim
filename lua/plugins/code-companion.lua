return {
  -- ✨ AI-powered coding, seamlessly in Neovim
  -- https://github.com/olimorris/codecompanion.nvim
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
          model = 'claude-3.7-sonnet',
        },
      },
      inline = {
        adapter = {
          name = 'copilot',
          model = 'claude-3.7-sonnet',
        },
      },
      cmd = {
        adapter = {
          name = 'copilot',
          model = 'claude-3.7-sonnet',
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
