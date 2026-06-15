-- NVIM config,


local M = {}

M.keymap = function(keys)
  for _, k in ipairs(keys) do
    local key  = k[1]
    local act  = k[2].act
    local mode = k[2].mode

    local desc    = k[2].desc or ''
    local noremap = k[2].noremap or true
    local opts = {
      desc    = desc,
      noremap = noremap,
      -- expr = expr,
      }

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

