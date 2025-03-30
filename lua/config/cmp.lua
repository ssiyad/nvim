local M = {
  completion = {
    menu = {
      min_width = 40,
      border = 'none',
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
    ['<C-s>'] = {
      'show',
      'show_documentation',
      'hide_documentation',
      'fallback',
    },
    ['<C-space>'] = { 'select_and_accept' },
    ['<S-Tab>'] = { 'snippet_backward', 'fallback' },
    ['<Tab>'] = { 'snippet_forward', 'fallback' },
  },
}

return M
