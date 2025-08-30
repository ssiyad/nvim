-- Navigate and manipulate file system. Part of 'mini.nvim' library.
-- https://github.com/nvim-mini/mini.files

return {
  'nvim-mini/mini.files',
  config = function()
    local keymap_set = require('utils.keymap_set')
    local files = require('mini.files')

    files.setup()

    keymap_set('n', '<Leader>o', function()
      files.open()
    end)

    local map_split = function(buf_id, lhs, direction)
      local rhs = function()
        local cur_target = files.get_explorer_state().target_window
        local new_target = vim.api.nvim_win_call(cur_target, function()
          vim.cmd(direction .. ' split')
          return vim.api.nvim_get_current_win()
        end)
        files.set_target_window(new_target)
      end
      local desc = 'Split ' .. direction
      vim.keymap.set('n', lhs, rhs, { buffer = buf_id, desc = desc })
    end

    vim.api.nvim_create_autocmd('User', {
      pattern = 'MiniFilesBufferCreate',
      callback = function(args)
        local buf_id = args.data.buf_id
        map_split(buf_id, '<C-s>', 'belowright horizontal')
        map_split(buf_id, '<C-v>', 'belowright vertical')
        map_split(buf_id, '<C-t>', 'tab')
      end,
    })
  end,
}
