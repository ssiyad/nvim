-- Git wrapper
-- https://github.com/tpope/vim-fugitive

return {
  'tpope/vim-fugitive',
  dependencies = {
    -- GitHub extension for fugitive.vim
    -- https://github.com/tpope/vim-rhubarb
    'tpope/vim-rhubarb',
  },
  event = 'VeryLazy',
  config = function()
    vim.api.nvim_create_autocmd('BufEnter', {
      desc = 'Open git commit edit in insert mode.',
      callback = function()
        if vim.bo.filetype == 'gitcommit' then
          vim.cmd('startinsert!')
        end
      end,
    })
  end,
}
