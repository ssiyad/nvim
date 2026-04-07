vim.pack.add({
  { src = 'https://github.com/saghen/blink.cmp', version = vim.version.range('*') },
})

require('blink-cmp').setup({
  completion = {
    menu = {
      min_width = 40,
      border = 'none',
    },
    documentation = {
      auto_show = true,
    },
    list = {
      selection = {
        preselect = false,
        auto_insert = false,
      },
    },
  },
  keymap = {
    preset = 'none',
    ['<C-e>'] = { 'hide' },
    ['<C-u>'] = { 'scroll_documentation_up', 'fallback' },
    ['<C-d>'] = { 'scroll_documentation_down', 'fallback' },
    ['<C-p>'] = { 'select_prev', 'fallback_to_mappings' },
    ['<C-n>'] = { 'select_next', 'fallback_to_mappings' },
    ['<C-space>'] = { 'select_and_accept' },
    ['<S-Tab>'] = { 'snippet_backward', 'fallback' },
    ['<Tab>'] = { 'snippet_forward', 'fallback' },
  },
})
