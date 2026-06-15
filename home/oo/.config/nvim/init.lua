-- NVIM config, a text editor based on vim.

vim.cmd [[source ~/.config/nvim/deft.vim]]
local nvim     = vim.fn.stdpath('config')
local pdofile  = require("pcall").pdofile
local prequire = require("pcall").prequire

prequire("autocmd").setup()
prequire("filetype").setup()
prequire("lspsetting").setup()

local keymap = nvim .. "/keymap/"
pdofile(keymap .. "motion.lua" )
pdofile(keymap .. "modify.lua" )
pdofile(keymap .. "select.lua" )
pdofile(keymap .. "normal.lua" )
pdofile(keymap .. "visual.lua" )
pdofile(keymap .. "insert.lua" )
pdofile(keymap .. "command.lua")
pdofile(keymap .. "control.lua")
pdofile(keymap .. "fnkey.lua"  )

prequire("packadd").setup()
local config = nvim .. "/config/"
pdofile(config .. "conform.lua"  )
pdofile(config .. "blinkcmp.lua" )
pdofile(config .. "telescope.lua")
pdofile(config .. "peek.lua"     )
pdofile(config .. "lualine.lua"  )
-- pdofile(config .. "noice.lua"    )
pdofile(keymap .. "plugin.lua")

prequire("misty")

