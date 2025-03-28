return {
  -- A good theme, I guess
  -- https://github.com/catppuccin/nvim
  {
    'catppuccin/nvim',
    config = function()
      require('config.theme')
    end,
  },

  -- Provides Nerd Font icons (glyphs) for use by neovim plugins
  -- https://github.com/nvim-tree/nvim-web-devicons
  {
    'nvim-tree/nvim-web-devicons',
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
    config = function()
      require('config.copilot')
    end,
  },

  -- Add/change/delete surrounding delimiter pairs with ease
  -- https://github.com/kylechui/nvim-surround
  {
    'kylechui/nvim-surround',
    config = function()
      require('nvim-surround').setup({})
    end,
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
  },

  -- Smart and powerful comment plugin for neovim. Supports treesitter,
  -- dot repeat, left-right/up-down motions, hooks, and more
  -- https://github.com/numToStr/Comment.nvim
  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end,
  },

  -- Git integration for buffers
  -- https://github.com/lewis6991/gitsigns.nvim
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('config.gitsigns')
    end,
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

  -- Find/List
  -- https://github.com/nvim-telescope/telescope.nvim
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      -- lua utils
      -- https://github.com/nvim-lua/plenary.nvim/
      'nvim-lua/plenary.nvim',

      -- Live grep with args
      -- https://github.com/nvim-telescope/telescope-live-grep-args.nvim
      'nvim-telescope/telescope-live-grep-args.nvim',
    },
    config = function()
      require('config.telescope')
    end,
  },

  -- A better annotation generator. Supports multiple languages and annotation conventions
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
  },

  -- autopairs for neovim
  -- https://github.com/windwp/nvim-autopairs
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = function()
      require('nvim-autopairs').setup({})
    end,
  },

  -- Automatic indentation style detection
  -- https://github.com/NMAC427/guess-indent.nvim
  {
    'nmac427/guess-indent.nvim',
    config = function()
      require('guess-indent').setup({})
    end,
  },

  -- Indent guides
  -- https://github.com/lukas-reineke/indent-blankline.nvim
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    config = function()
      require('ibl').setup()
    end,
  },

  -- fast and easy to configure neovim statusline plugin
  -- https://github.com/nvim-lualine/lualine.nvim
  {
    'nvim-lualine/lualine.nvim',
    opts = require('config.lualine'),
  },

  -- markdown preview plugin for (neo)vim
  -- https://github.com/iamcco/markdown-preview.nvim
  {
    'iamcco/markdown-preview.nvim',
    build = function()
      vim.fn['mkdp#util#install']()
    end,
  },

  -- Edit filesystem like a buffer
  -- https://github.com/stevearc/oil.nvim
  {
    'stevearc/oil.nvim',
    config = function()
      require('config.oil')
    end,
  },
}
