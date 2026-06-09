-- NVIM config,


local actions = {

  open_file_manager = { act = '', desc = 'open file manager' },
  run_file          = { act = '', desc = "run file"          },

}

local a = actions
a.open_file_manager.act = function () vim.cmd('update|only|vsplit|wincmd L|Yazi') end
a.run_file.act          = function () vim.cmd('update') require('launcher').launch() end

local mode = { 'n', 'i', 'c', 'x', 's', 'o' }
for _, v in pairs(actions) do
  v.mode = mode
  v.noremap = true
end

return actions
