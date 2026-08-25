-- NVIM config,


local pack_file = debug.getinfo(1).source:sub(2)
local pack_dir  = vim.fn.fnamemodify(pack_file, ":h")
-- vim.notify("pack_file: " .. pack_file)
-- vim.notify("pack_dir:  " .. pack_dir)

local M = {}

M.format = function(spec)
  local format = spec or require("mirormat.format")
  local ft = vim.bo.filetype
  -- local name = vim.fn.expand("%:t")
  -- vim.notify(ft)

  for _, f in ipairs(format) do
    if vim.tbl_contains(f.ft, ft) then
      local cmd  = {}
      local file = vim.fn.expand("%:p")

      for _, c in ipairs(f.cmd) do table.insert(cmd, c) end
      table.insert(cmd, file)

      vim.cmd("update")
      vim.fn.system(cmd)
      vim.cmd.edit()
      vim.notify("format " .. ft)
      -- vim.cmd("update")
      return
    end
  end
end

return M

