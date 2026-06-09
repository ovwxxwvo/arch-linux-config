-- NVIM config,


local M = {}

M.n = { 'n' } -- Normal
M.i = { 'i' } -- Insert
M.c = { 'c' } -- command
M.v = { 'x' } -- Visual
M.s = { 's' } -- Select
M.o = { 'o' } -- Operate

M.ic = { 'i', 'c' }
M.vs = { 'x', 's' }

M.nvso = { 'n', 'x', 's', 'o' }
M.all = { 'n', 'i', 'c', 'x', 's', 'o' }

M.map = function(t)
  for _, v in ipairs(t) do
    local opts = {}
    opts.noremap = true
    opts.desc = v[4]
    vim.keymap.set(v[1], v[2], v[3], opts)
  end
end

return M
