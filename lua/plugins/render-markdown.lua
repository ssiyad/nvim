return {
  'MeanderingProgrammer/render-markdown.nvim',
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  opts = {
    completions = {
      lsp = {
        enabled = true,
      },
    },
    -- render_modes = true,
    preset = 'obsidian',
    heading = {
      sign = false,
      -- width = 'block',
      -- left_pad = 1,
      -- right_pad = 1,
    },
  },
}
