-- NVIM config,


require("miraction.autocmd.clip-share")


local M = {}

local action = require("miraction.action")
M.actions = action.actions
M.setup   = action.setup

return M


