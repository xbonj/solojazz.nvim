local theme = require('solojazz.highlights')

local M = {}

local function highlight(highlights)
  for group, hl in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, hl)
  end
end

function M.setup()
  if (vim.g.colors_name) then
    vim.cmd('hi clear')
  end

  vim.g.colors_name = 'solojazz'
  vim.o.termguicolors = true

  local highlights = theme.setup()

  highlight(highlights)
end

return M
