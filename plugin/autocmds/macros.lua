local augroup = vim.api.nvim_create_augroup('macro_notifications', {
  clear = true,
})

vim.api.nvim_create_autocmd('RecordingEnter', {
  group = augroup,
  callback = function()
    local register = vim.fn.reg_recording()
    if register and register ~= '' then
      vim.notify('Recording macro @' .. register, vim.log.levels.INFO, {
        title = 'Macro',
        icon = '▶️',
        group = 'macro_status',
      })
    end
  end,
})

vim.api.nvim_create_autocmd('RecordingLeave', {
  group = augroup,
  callback = function()
    local register = vim.fn.reg_recording()
    if register and register ~= '' then
      vim.notify('Finished recording macro @' .. register, vim.log.levels.INFO, {
        title = 'Macro',
        icon = '⏹️',
        group = 'macro_status',
      })
    end
  end,
})
