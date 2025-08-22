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
    })

    vim.cmd.colorscheme('catppuccin')
  end,
}
