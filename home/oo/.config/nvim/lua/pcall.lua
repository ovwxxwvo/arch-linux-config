-- NVIM config,


local M = {}

M.pdofile = function(file)
  local ok, ret = pcall(dofile, file)
  if not ok then
    vim.notify("FAIL: " .. file, vim.log.levels.ERROR)
    vim.notify(ret, vim.log.levels.ERROR)
  end
  return ret
end

M.prequire = function(module)
  local ok, ret = pcall(require, module)
  if not ok then
    vim.notify("FAIL: " .. module, vim.log.levels.ERROR)
    vim.notify(ret, vim.log.levels.ERROR)
  end
  return ret
end

return M
