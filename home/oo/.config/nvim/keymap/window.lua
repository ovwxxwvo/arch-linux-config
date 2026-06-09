-- NVIM config,


local key       = require("keymap")
local keymap    = key.map
local nvso      = key.nvso

vim.g.mapleader = '\''
-- vim.g.mapleader = '<SPACE>'

local t         = {

  -- tab & win
  -- { n, '<leader>m',   '<ESC>:tabnew<CR>', },
  -- { n, '<leader>[',   '<ESC>:split<CR>', },
  -- { n, '<leader>]',   '<ESC>:vsplit<CR>', },
  --
  -- -- tab focus
  -- { n, '<leader>,',   '<ESC>:tabNext<CR>', },
  -- { n, '<leader>.',   '<ESC>:tabnext<CR>', },
  -- -- win focus
  -- { n, '<leader>j',   '<C-w>h', },
  -- { n, '<leader>k',   '<C-w>j', },
  -- { n, '<leader>l',   '<C-w>k', },
  -- { n, '<leader>;',   '<C-w>l', },
  --
  -- -- win move  in tab
  -- { a, '<C-S-UP>',    '<ESC><C-w>K', },
  -- { a, '<C-S-DOWN>',  '<ESC><C-w>J', },
  -- { a, '<C-S-LEFT>',  '<ESC><C-w>H', },
  -- { a, '<C-S-RIGHT>', '<ESC><C-w>L', },
  --
  -- -- win resize
  -- { a, '<C-UP>',      '<ESC>:resize -2<CR>', },
  -- { a, '<C-DOWN>',    '<ESC>:resize +2<CR>', },
  -- { a, '<C-LEFT>',    '<ESC>:vertical res +2<CR>', },
  -- { a, '<C-RIGHT>',   '<ESC>:vertical res -2<CR>', },

}

keymap(t)
