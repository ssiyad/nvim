-- Autoformat
-- https://github.com/stevearc/conform.nvim

return {
  'stevearc/conform.nvim',
  config = function()
    local js = {
      'eslint_d',
      'prettier',
      'rustywind',
    }

    local html = {
      'djlint',
      'rustywind',
    }

    require('conform').setup({
      formatters = {
        djlint = {
          prepend_args = { '--indent', 2 },
        },
      },
      formatters_by_ft = {
        html = html,
        htmldjango = html,
        lua = {
          'stylua',
        },
        python = {
          'ruff_fix',
          'ruff_format',
          'ruff_organize_imports',
        },
        javascript = js,
        typescript = js,
        typescriptreact = js,
        vue = js,
      },
      format_after_save = {
        lsp_fallback = true,
      },
    })
  end,
  event = 'VeryLazy',
}
