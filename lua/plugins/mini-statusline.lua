return {
  'nvim-mini/mini.statusline',
  config = function()
    local statusline = require('mini.statusline')

    statusline.setup({
      content = {
        active = function()
          local mode, hl_mode = statusline.section_mode({ trunc_width = 120 })
          local diff = statusline.section_diff({ trunc_width = 75 })
          local diagnostics = statusline.section_diagnostics({ trunc_width = 75 })
          local filename = statusline.section_filename({ trunc_width = 140 })
          local fileinfo = statusline.section_fileinfo({ trunc_width = 120 })
          local location = statusline.section_location({ trunc_width = 75 })
          local search = statusline.section_searchcount({ trunc_width = 75 })

          return statusline.combine_groups({
            { hl = hl_mode, strings = { mode } },
            { hl = 'MiniStatuslineDevinfo', strings = { diff, diagnostics } },
            '%<', -- Mark general truncate point
            { hl = 'MiniStatuslineFilename', strings = { filename } },
            '%=', -- End left alignment
            { hl = 'MiniStatuslineFileinfo', strings = { fileinfo } },
            { hl = hl_mode, strings = { search, location } },
          })
        end,
      },
    })
  end,
}
