local clients_path = vim.fn.stdpath('config') .. '/lua/autocmds'
local dir_content = vim.fn.readdir(clients_path, [[v:val =~ '\.lua$']])

for _, file in pairs(dir_content) do
  ---@type string[]
  local m = vim.fn.split(file, '\\.')[1]

  if m ~= 'init' then
    require('autocmds.' .. m)
  end
end
