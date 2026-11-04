-- Loads first, so the Mason bin directory is on PATH before LSP and conform.
vim.pack.add({ 'https://github.com/mason-org/mason.nvim' })

require('mason').setup()

-- List of Mason packages to ensure are installed.
-- gopls is not here: Mason builds it with `go`, and gopls needs Go anyway.
-- rust-analyzer is not here: rustup gives the one that matches the toolchain.
local packages = {
  -- Language servers.
  'css-lsp',
  'html-lsp',
  'lua-language-server',
  'pyright',
  'tailwindcss-language-server',
  'vtsls',
  'vue-language-server',
  -- Formatters.
  'biome',
  'prettier',
  'ruff',
  'stylua',
  -- Used by nvim-treesitter to install parsers.
  'tree-sitter-cli',
}

-- Install the missing packages.
local registry = require('mason-registry')
registry.refresh(function()
  for _, name in ipairs(packages) do
    local pkg = registry.get_package(name)
    if not pkg:is_installed() and not pkg:is_installing() then
      pkg:install()
    end
  end
end)
