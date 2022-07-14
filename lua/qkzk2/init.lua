local util = require("qkzk2.util")
local theme = require("qkzk2.theme")

local M = {}

function M.colorscheme()
  util.load(theme.setup())
end

return M
