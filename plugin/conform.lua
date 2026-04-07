vim.pack.add({ 'https://github.com/stevearc/conform.nvim' })

require('conform').setup({
  formatters_by_ft = {
    html = { 'prettier' },
    htmldjango = { 'prettier' },
    lua = {
      'stylua',
    },
    python = {
      'ruff_fix',
      'ruff_format',
      'ruff_organize_imports',
    },
    javascript = { 'biome' },
    typescript = { 'biome' },
    typescriptreact = { 'biome' },
    vue = { 'biome' },
  },
  format_after_save = {
    lsp_fallback = true,
  },
})
