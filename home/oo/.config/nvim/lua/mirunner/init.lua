-- NVIM config,


local pack_file = debug.getinfo(1).source:sub(2)
local pack_dir  = vim.fn.fnamemodify(pack_file, ":h")
-- vim.notify("pack_file: " .. pack_file)
-- vim.notify("pack_dir:  " .. pack_dir)


local M = {}

M.launch = function(spec)
  local spec = spec or require("mirunner.exts")
  local ext = vim.fn.expand("%:e")

  for _, s in ipairs(spec) do
    if vim.tbl_contains(s.exts, ext) then
      local wrapper = pack_dir .. "/wrapper/" .. s.wrapper
      local runner  = pack_dir .. "/runner/" .. s.runner
      local file    = vim.fn.expand("%")
      local server  = vim.v.servername
      local cmd     = string.format("silent ! %s %s %s %s", wrapper, runner, file, server)

      vim.cmd(cmd)
      return
    end
  end
end

return M
