-- NVIM config,


local M = {}

M.setup = function(spec)
  local spec = spec or require("lspsetting.lsp")
  -- vim.lsp.config('*', { root_markers = { '.git' } })

  for i, s in ipairs(spec) do
    local ls = s[1]
    local conf = s[2]
    vim.lsp.config(ls, conf)
    if ls ~= '*' then vim.lsp.enable(ls) end
    -- vim.lsp.enable(ls)
  end

  -- if vim.fn.empty(vim.fn.bufname('%')) == 0 then
    -- vim.cmd("silent! edit")
  -- end
end

return M
