return {
  'catppuccin/nvim',
  config = function()
    require('catppuccin').setup({
      transparent_background = true,
      float = {
        transparent = true,
      },
      integrations = {
        blink_cmp = true,
        mini = {
          enabled = true,
        },
        treesitter = true,
      },
      custom_highlights = function(colors)
        return {
          MiniStatuslineFilename = {
            bg = colors.none,
          },
        }
      end,
    })

    vim.cmd.colorscheme('catppuccin')
  end,
}
