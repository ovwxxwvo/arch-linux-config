-- NVIM config,
  -- M.n = { 'n' } -- Normal
  -- M.i = { 'i' } -- Insert
  -- M.c = { 'c' } -- command
  -- M.v = { 'x' } -- Visual
  -- M.s = { 's' } -- Select
  -- M.o = { 'o' } -- Operate

local M = {}

M.actions = vim.tbl_deep_extend("force", {},
  require('miraction.action.motion' ),
  require('miraction.action.modify' ),
  require('miraction.action.select' ),
  require('miraction.action.normal' ),
  require('miraction.action.visual' ),
  require('miraction.action.insert' ),
  require('miraction.action.command'),
  require('miraction.action.control'),
  require('miraction.action.fnkey'  ),
  {})

return M
