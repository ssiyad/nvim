-- Pick anything. Part of 'mini.nvim' library.
-- https://github.com/echasnovski/mini.pick

return {
  'echasnovski/mini.pick',
  config = function()
    local keymap_set = require('utils.keymap_set')
    local visual_text = require('utils.visual_text')
    local pick = require('mini.pick')

    pick.setup({
      mappings = {
        move_down = '<C-j>',
        move_up = '<C-k>',
      },
    })

    keymap_set('n', '<Leader>ff', function()
      pick.builtin.files()
    end)

    keymap_set('n', '<Leader>fg', function()
      pick.builtin.grep_live()
    end)

    keymap_set('v', '<Leader>fg', function()
      pick.builtin.grep({
        pattern = visual_text(),
      })
    end)

    keymap_set('n', '<Leader>fb', function()
      pick.builtin.buffers()
    end)

    keymap_set('n', '<Leader>fh', function()
      pick.builtin.help()
    end)
  end,
}
