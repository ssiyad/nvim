local M = {
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
  -- Signature is an experimental feature. This may change in the future.
  signature = {
    enabled = true,
  },
  keymap = {
    -- Disable presets.
    preset = 'none',

    ['<C-e>'] = { 'hide' },
    ['<C-u>'] = { 'scroll_documentation_up', 'fallback' },
    ['<C-d>'] = { 'scroll_documentation_down', 'fallback' },
    ['<C-k>'] = { 'select_prev', 'fallback_to_mappings' },
    ['<C-j>'] = { 'select_next', 'fallback_to_mappings' },
    ['<C-space>'] = { 'select_and_accept' },
    ['<S-Tab>'] = { 'snippet_backward', 'fallback' },
    ['<Tab>'] = { 'snippet_forward', 'fallback' },
  },
}

return M
