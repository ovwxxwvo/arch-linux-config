-- NVIM config,
-- Maintainer:	Jessee Chan <CYPHER0@foxmail.com>
-- Last Change: 2026.04.20


local module = "lualine"
if not pcall(require, module) then return end
require(module).setup { options = { theme = {

  normal   = {
    a = { fg = "#101010", bg = "#c0f0e0", gui = "bold" },
    b = { fg = "#c0f0e0", bg = "#202020", },
    c = { fg = "NONE", bg = "NONE", },
  },

  insert   = {
    a = { fg = "#101010", bg = "#c0e0f0", gui = "bold" },
    b = { fg = "#c0e0f0", bg = "#202020", },
    c = { fg = "NONE", bg = "NONE", },
  },

  visual   = {
    a = { fg = "#101010", bg = "#f0e0c0", gui = "bold" },
    b = { fg = "#f0e0c0", bg = "#202020", },
    c = { fg = "NONE", bg = "NONE", },
  },

  replace  = {
    a = { fg = "#101010", bg = "#e0c0f0", gui = "bold" },
    b = { fg = "#e0c0f0", bg = "#202020", },
    c = { fg = "NONE", bg = "NONE", },
  },

  command  = {
    a = { fg = "#101010", bg = "#f0f0c0", gui = "bold" },
    b = { fg = "#f0f0c0", bg = "#202020", },
    c = { fg = "NONE", bg = "NONE", },
  },

  inactive = {
    a = { fg = "#101010", bg = "#e0e0e0", },
    b = { fg = "#e0e0e0", bg = "", },
    c = { fg = "", bg = "#202020", },
  },

} } }
