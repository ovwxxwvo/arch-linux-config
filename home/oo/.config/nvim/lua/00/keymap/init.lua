-- NVIM config,


local M = {}
  -- M.n = { 'n' } -- Normal
  -- M.i = { 'i' } -- Insert
  -- M.c = { 'c' } -- command
  -- M.v = { 'x' } -- Visual
  -- M.s = { 's' } -- Select
  -- M.o = { 'o' } -- Operate

-- vim.g.mapleader = " "
  local motion  = require('keymap.action.motion')
  local modify  = require('keymap.action.modify')
  local normal  = require('keymap.action.normal')
  local visual  = require('keymap.action.visual')
  local surround= require('keymap.action.surround')
  local insert  = require('keymap.action.insert')
  local command = require('keymap.action.command')
  local control = require('keymap.action.control')
  local func    = require('keymap.action.function')
  local plugin  = require('keymap.action.plugin')

M.actions = vim.tbl_deep_extend("force", {},
  motion, modify, normal, visual, surround, insert, command, control, func, plugin,
  {})

M.keymap = function(keys)
  for _, k in ipairs(keys) do
    local key = k[1]
    local act = k[2].act
    local mode = k[2].mode
    -- local opts = { desc=k[2].desc, noremap=k[2].noremap }
    local opts = k[2].opts
    -- print( mode, key, act, opts)
    if act and mode then
      vim.keymap.set(mode, key, act, opts)
    end
  end
end

M.setup = function(keys)
  local keys = keys or {}
  if not next(keys) then return end
  local map = M.keymap
  map(keys)
end

return M
