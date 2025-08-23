return function()
  local start_pos = vim.fn.getpos('v')
  local end_pos = vim.fn.getpos('.')
  local region = vim.fn.getregion(start_pos, end_pos)
  local text = table.concat(region, '\n')
  return text
end
