-- frappe-lsp: the local checkout while developing it, else the published plugin.
local checkout = vim.fn.expand('~/sources/frappe-lsp')

if vim.uv.fs_stat(checkout .. '/lua/frappe_lsp') then
  vim.opt.runtimepath:prepend(checkout)
else
  vim.pack.add({ 'https://github.com/ssiyad/frappe-language-server' })
end

-- The checkout's release build when there is one; otherwise the plugin uses
-- what :FrappeLspInstall downloaded, else `frappe-lsp` on PATH.
local build = checkout .. '/target/release/frappe-lsp'
require('frappe_lsp').setup({
  cmd = vim.fn.executable(build) == 1 and build or nil,
})
