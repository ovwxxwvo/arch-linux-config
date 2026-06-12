-- NVIM config,
  -- M.n = { 'n' } -- Normal
  -- M.i = { 'i' } -- Insert
  -- M.c = { 'c' } -- command
  -- M.v = { 'x' } -- Visual
  -- M.s = { 's' } -- Select
  -- M.o = { 'o' } -- Operate

local M = {}

M.actions = vim.tbl_deep_extend("force", {},
  require('miraction.action.motion')  ,
  require('miraction.action.modify')  ,
  require('miraction.action.normal')  ,
  require('miraction.action.visual')  ,
  require('miraction.action.surround'),
  require('miraction.action.insert')  ,
  require('miraction.action.command') ,
  require('miraction.action.control') ,
  require('miraction.action.function'),
 -- require('miraction.action.plugin')  ,
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
