vim.api.nvim_create_autocmd('CursorHold', {
  callback = function()
    vim.diagnostic.open_float(nil, {
      close_events = {
        'BufLeave',
        'CursorMoved',
        'InsertEnter',
        'FocusLost',
      },
      focusable = true,
      header = '',
      prefix = '',
      scope = 'line',
      source = 'if_many',
      style = 'minimal',
    })
  end,
})
