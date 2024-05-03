local c = require('solojazz.colors').colors

local solojazz = {}

solojazz.normal = {
  a = { fg = c.white, bg = c.teal_1, gui = 'bold' },
  b = { fg = c.teal_1, bg = c.honeydew },
  c = { fg = c.purple, bg = c.white_2 },
}

solojazz.insert = {
  a = { fg = c.white, bg = c.green, gui = 'bold' },
  b = { fg = c.green, bg = c.honeydew },
  c = { fg = c.purple, bg = c.white_2 },
}

solojazz.command = {
  a = { fg = c.white, bg = c.orange, gui = 'bold' },
  b = { fg = c.orange, bg = c.honeydew },
  c = { fg = c.purple, bg = c.white_2 },
}

solojazz.visual = {
  a = { fg = c.white, bg = c.pink, gui = 'bold' },
  b = { fg = c.pink, bg = c.honeydew },
  c = { fg = c.purple, bg = c.white_2 },
}

solojazz.replace = {
  a = { fg = c.white, bg = c.red, gui = 'bold' },
  b = { fg = c.red, bg = c.white },
  c = { fg = c.purple, bg = c.white_2 },
}

solojazz.terminal = {
  a = { fg = c.white, bg = c.blue_1, gui = 'bold' },
  b = { fg = c.blue_1, bg = c.honeydew },
  c = { fg = c.purple, bg = c.white_2 },
}

solojazz.inactive = {
  a = { fg = c.teal_1, bg = c.white_1, gui = 'bold' },
  b = { fg = c.teal_1, bg = c.white_1 },
  c = { fg = c.teal_1, bg = c.white_1 },
}

for _, mode in pairs(solojazz) do
  mode.a.gui = 'bold'
end

return solojazz
