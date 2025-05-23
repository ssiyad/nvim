local clients_path = vim.fn.stdpath('config') .. '/lua/lsp/clients'
local dir_content = vim.fn.readdir(clients_path, [[v:val =~ '\.lua$']])

local lspconfig = require('lspconfig')
local on_attach = require('lsp.on_attach')

for _, file in pairs(dir_content) do
  ---@type string[]
  local m = vim.fn.split(file, '\\.')
  local server_name = m[1]
  local server = lspconfig[server_name]

  ---@type table
  local config = require('lsp.clients.' .. server_name)

  config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities, true)
  config.on_attach = config.on_attach or on_attach

  server.setup(config)
end
