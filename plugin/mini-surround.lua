vim.pack.add({ 'https://github.com/nvim-mini/mini.surround' })

require('mini.surround').setup({
  search_method = 'cover_or_next',
})
