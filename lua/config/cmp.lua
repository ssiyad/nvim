return {
  keymap = {
    -- Disable presets.
    preset = 'none',

    ['<C-d>'] = { 'scroll_documentation_up', 'fallback' },
    ['<C-e>'] = { 'hide' },
    ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },
    ['<C-j>'] = { 'select_next', 'fallback_to_mappings' },
    ['<C-k>'] = { 'select_prev', 'fallback_to_mappings' },
    ['<C-s>'] = {
      'show',
      'show_documentation',
      'show_signature',
      'hide_signature',
      'hide_documentation',
      'fallback',
    },
    ['<C-space>'] = { 'select_and_accept' },
    ['<S-Tab>'] = { 'snippet_backward', 'fallback' },
    ['<Tab>'] = { 'snippet_forward', 'fallback' },
  },
}
