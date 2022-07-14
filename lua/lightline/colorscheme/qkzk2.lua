local config = require("qkzk2.config")
local colors = require("qkzk2.colors").setup(config)
local util = require("qkzk2.util")

local qkzk2 = {}

qkzk2.normal = {
  left = { { colors.black, colors.blue }, { colors.blue, colors.fg_gutter } },
  middle = { { colors.fg, colors.bg_statusline } },
  right = { { colors.black, colors.blue }, { colors.blue, colors.fg_gutter } },
  error = { { colors.black, colors.error } },
  warning = { { colors.black, colors.warning } },
}

qkzk2.insert = {
  left = { { colors.black, colors.green }, { colors.blue, colors.bg } },
}

qkzk2.visual = {
  left = { { colors.black, colors.magenta }, { colors.blue, colors.bg } },
}

qkzk2.replace = {
  left = { { colors.black, colors.red }, { colors.blue, colors.bg } },
}

qkzk2.inactive = {
  left = { { colors.blue, colors.bg_statusline }, { colors.dark3, colors.bg } },
  middle = { { colors.fg_gutter, colors.bg_statusline } },
  right = { { colors.fg_gutter, colors.bg_statusline }, { colors.dark3, colors.bg } },
}

qkzk2.tabline = {
  left = { { colors.dark3, colors.bg_highlight }, { colors.dark3, colors.bg } },
  middle = { { colors.fg_gutter, colors.bg_statusline } },
  right = { { colors.fg_gutter, colors.bg_statusline }, { colors.dark3, colors.bg } },
  tabsel = { { colors.blue, colors.fg_gutter }, { colors.dark3, colors.bg } },
}

if vim.o.background == "light" then
  for _, mode in pairs(qkzk2) do
    for _, section in pairs(mode) do
      for _, subsection in pairs(section) do
        subsection[1] = util.getColor(subsection[1])
        subsection[2] = util.getColor(subsection[2])
      end
    end
  end
end

return qkzk2
