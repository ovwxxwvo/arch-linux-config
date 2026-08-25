-- NVIM config,


local M = {}

M.setup = function()
  local lsp = require("lspsetting.lsp")
  vim.lsp.config('*', { root_markers = { '.git' } })

  for ls, conf in pairs(lsp) do
    vim.lsp.config(ls, conf)
    if ls ~= '*' then vim.lsp.enable(ls) end
    -- vim.lsp.enable(ls)
  end

  -- if vim.fn.empty(vim.fn.bufname('%')) == 0 then
    -- vim.cmd("silent! edit")
  -- end
end

return M
