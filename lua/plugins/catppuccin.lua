
return {
  'catppuccin/nvim',
  config = function()
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
          FzfLuaNormal = { bg = colors.mantle },
          FzfLuaBorder = { bg = colors.mantle },
          FzfLuaTitle = { bg = colors.blue, fg = colors.base },
          FzfLuaPreviewTitle = { bg = colors.red, fg = colors.base },
        }
      end,
    })

    vim.cmd.colorscheme('catppuccin')
  end,
}
