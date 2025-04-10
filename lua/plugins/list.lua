return {
  -- A good theme, I guess
  -- https://github.com/catppuccin/nvim
  {
    'catppuccin/nvim',
    config = function()
      require('config.theme')
    end,
  },

  -- Neovim Lua plugin to extend and create `a`/`i` textobjects. Part of
  -- 'mini.nvim' library.
  -- https://github.com/echasnovski/mini.ai
  {
    'echasnovski/mini.ai',
    config = function()
      require('mini.ai').setup()
    end,
  },

  -- Work with diff hunks. Part of 'mini.nvim' library.
  -- https://github.com/echasnovski/mini.diff
  {
    'echasnovski/mini.diff',
    config = function()
      require('mini.diff').setup()
    end,
  },

  -- Highlight patterns in text. Part of 'mini.nvim' library.
  -- https://github.com/echasnovski/mini.hipatterns
  {
    'echasnovski/mini.hipatterns',
    opts = require('config.hipatterns'),
  },

  -- Icon provider. Part of 'mini.nvim' library.
  -- https://github.com/echasnovski/mini.icons
  {
    'echasnovski/mini.icons',
    config = function()
      local icons = require('mini.icons')
      icons.setup()
      icons.mock_nvim_web_devicons()
    end,
  },

  -- Neovim Lua plugin to automatically manage character pairs. Part of
  -- 'mini.nvim' library.
  -- https://github.com/echasnovski/mini.pairs
  {
    'echasnovski/mini.pairs',
    config = function()
      require('mini.pairs').setup()
    end,
  },

  -- Neovim Lua plugin with minimal and fast statusline. Part of 'mini.nvim'
  -- library.
  -- https://github.com/echasnovski/mini.statusline
  {
    'echasnovski/mini.statusline',
    config = function()
      require('config.statusline')
    end,
  },

  -- Neovim Lua plugin with fast and feature-rich surround actions. Part of
  -- 'mini.nvim' library.
  -- https://github.com/echasnovski/mini.surround
  {
    'echasnovski/mini.surround',
    config = function()
      require('mini.surround').setup()
    end,
  },

  -- Quickstart configs for Nvim LSP
  -- https://github.com/neovim/nvim-lspconfig
  {
    'neovim/nvim-lspconfig',
    config = function()
      require('lsp')
    end,
  },

  -- Autoformat
  -- https://github.com/stevearc/conform.nvim
  {
    'stevearc/conform.nvim',
    config = function()
      require('config.conform')
    end,
    event = 'VeryLazy',
  },

  -- Performant, batteries-included completion plugin for Neovim.
  -- https://github.com/saghen/blink.cmp
  {
    'saghen/blink.cmp',
    version = '*',
    opts = require('config.cmp'),
    event = 'VeryLazy',
  },

  -- https://github.com/github/copilot.vim
  -- GitHub Copilot for Vim
  {
    'github/copilot.vim',
  },

  -- Git wrapper
  -- https://github.com/tpope/vim-fugitive
  {
    'tpope/vim-fugitive',
    dependencies = {
      -- GitHub extension for fugitive.vim
      -- https://github.com/tpope/vim-rhubarb
      'tpope/vim-rhubarb',
    },
    event = 'VeryLazy',
  },

  -- Nvim Treesitter configurations and abstraction layer
  -- https://github.com/nvim-treesitter/nvim-treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require('config.treesitter')
    end,
  },

  -- Find/List.
  -- https://github.com/nvim-telescope/telescope.nvim
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      -- Lua utils.
      -- https://github.com/nvim-lua/plenary.nvim/
      'nvim-lua/plenary.nvim',

      -- Live grep with args.
      -- https://github.com/nvim-telescope/telescope-live-grep-args.nvim
      'nvim-telescope/telescope-live-grep-args.nvim',
    },
    config = function()
      require('config.telescope')
    end,
    event = 'VeryLazy',
  },

  -- A better annotation generator. Supports multiple languages and annotation
  -- conventions.
  -- https://github.com/danymat/neogen
  {
    'danymat/neogen',
    version = '*',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
    },
    config = function()
      require('config.neogen')
    end,
    event = 'VeryLazy',
  },

  -- Automatic indentation style detection
  -- https://github.com/NMAC427/guess-indent.nvim
  {
    'nmac427/guess-indent.nvim',
    config = function()
      require('guess-indent').setup({})
    end,
  },

  -- markdown preview plugin for (neo)vim
  -- https://github.com/iamcco/markdown-preview.nvim
  {
    'iamcco/markdown-preview.nvim',
    build = function()
      vim.fn['mkdp#util#install']()
    end,
  },

  -- Edit filesystem like a buffer.
  -- https://github.com/stevearc/oil.nvim
  {
    'stevearc/oil.nvim',
    config = function()
      require('config.oil')
    end,
    event = 'VeryLazy',
  },
}
