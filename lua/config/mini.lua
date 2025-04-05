local keymap_set = require('utils.keymap_set')

-- Text objects.
require('mini.ai').setup()

-- Comment.
require('mini.comment').setup()

-- Dev icons.
local icons = require('mini.icons')
icons.setup()
icons.mock_nvim_web_devicons()

-- Diff.
require('mini.diff').setup()

-- Highlight patterns.
local patterns = require('mini.hipatterns')
patterns.setup({
  highlighters = {
    fixme = { pattern = 'Fix:', group = 'MiniHipatternsFixme' },
    hack = { pattern = 'Hack:', group = 'MiniHipatternsHack' },
    todo = { pattern = 'Todo:', group = 'MiniHipatternsTodo' },
    note = { pattern = 'Note:', group = 'MiniHipatternsNote' },
    hex_color = patterns.gen_highlighter.hex_color(),
  },
})

-- Files.
local files = require('mini.files')
files.setup()

-- Files mappings.
keymap_set('n', '<Leader>o', files.open)

-- Indent.
require('mini.indentscope').setup({
  draw = {
    animation = function()
      return 0
    end,
  },
  symbol = '│',
})

-- Autopairs.
require('mini.pairs').setup()

-- Statusline.
local statusline = require('mini.statusline')
statusline.setup({
  content = {
    active = function()
      local mode, mode_hl = statusline.section_mode({ trunc_width = 120 })
      local diff = statusline.section_diff({ trunc_width = 75 })
      local diagnostics = statusline.section_diagnostics({ trunc_width = 75 })
      local filename = statusline.section_filename({ trunc_width = 140 })
      local fileinfo = statusline.section_fileinfo({ trunc_width = 120 })
      local location = statusline.section_location({ trunc_width = 75 })
      local search = statusline.section_searchcount({ trunc_width = 75 })

      return statusline.combine_groups({
        { hl = mode_hl, strings = { mode } },
        { hl = 'MiniStatuslineDevinfo', strings = { diff, diagnostics } },
        '%<', -- Mark general truncate point
        { hl = 'MiniStatuslineFilename', strings = { filename } },
        '%=', -- End left alignment
        { hl = 'MiniStatuslineFileinfo', strings = { fileinfo } },
        { hl = mode_hl, strings = { search, location } },
      })
    end,
  },
})

-- Finder.
local pick = require('mini.pick')
pick.setup()

-- Finder mappings.
keymap_set('n', '<Leader>ff', pick.builtin.files)
keymap_set('n', '<Leader>fg', pick.builtin.grep_live)

-- Surround.
require('mini.surround').setup()
