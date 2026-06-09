-- NVIM config,


-- local pack_file = debug.getinfo(1).source:sub(2)
-- local pack_dir  = vim.fn.fnamemodify(pack_file, ":h")

local set_color = require("misty/util").set_color

set_color(require("misty/config/basic"))
set_color(require("misty/config/syntax"))

set_color(require("misty/config/pack"))

require("misty/config/setup")
