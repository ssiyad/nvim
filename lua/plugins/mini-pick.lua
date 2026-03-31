-- Pick anything. Part of 'mini.nvim' library.
-- https://github.com/nvim-mini/mini.pick

return {
  'nvim-mini/mini.pick',
  config = function()
    local visual_text = require('utils.visual_text')
    local pick = require('mini.pick')

    pick.setup({
      mappings = {
        move_down = '<C-n>',
        move_up = '<C-p>',
      },
    })

    vim.keymap.set('n', '<Leader>ff', function()
      pick.builtin.files()
    end, { noremap = true, silent = true })

    vim.keymap.set('n', '<Leader>fg', function()
      pick.builtin.grep_live()
    end, { noremap = true, silent = true })

    vim.keymap.set('v', '<Leader>fg', function()
      pick.builtin.grep({
        pattern = visual_text(),
      })
    end, { noremap = true, silent = true })

    vim.keymap.set('n', '<Leader>fb', function()
      pick.builtin.buffers()
    end, { noremap = true, silent = true })

    vim.keymap.set('n', '<Leader>fh', function()
      pick.builtin.help()
    end, { noremap = true, silent = true })
  end,
}
