require('catppuccin').setup({
  integrations = {
    blink_cmp = true,
    copilot_vim = true,
    markdown = true,
    mini = {
      enabled = true,
    },
    telescope = true,
    treesitter = true,
    treesitter_context = true,
  },
  custom_highlights = function(colors)
    return {
      FloatBorder = { bg = colors.mantle },
      NvimTreeNormal = { bg = colors.none },
      TelescopeBorder = { bg = colors.mantle },
      TelescopeNormal = { bg = colors.mantle },
      TelescopePreviewTitle = { bg = colors.blue, fg = colors.base },
      TelescopePromptTitle = { bg = colors.red, fg = colors.base },
    }
  end,
})

vim.cmd.colorscheme('catppuccin')
