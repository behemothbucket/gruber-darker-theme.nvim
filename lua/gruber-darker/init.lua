local M = {}

function M.setup()
  vim.cmd('hi clear')

  vim.o.background = 'dark'
  if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
  end

  vim.o.termguicolors = true
  vim.g.colors_name = 'gruber-darker'

  local hi = vim.api.nvim_set_hl
  local highlight_groups = require('gruber-darker.theme')

  for name, style in pairs(highlight_groups) do hi(0, name, style) end
end

return M
