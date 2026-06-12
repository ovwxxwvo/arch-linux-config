-- NVIM config,


local actions = {

  open_file_manager = { act = '', desc = 'open file manager' },
  run_file          = { act = '', desc = "run file"          },

}

local a = actions
a.open_file_manager.act = function () vim.cmd('update|only|vsplit|wincmd L|Yazi') end
a.run_file.act          = function () vim.cmd('update') require('launcher').launch() end

local mode = { 'n', 'i', 'c', 'x', 's', 'o' }
for _, act in pairs(actions) do
  act.mode = mode
  act.opts = {
    desc = act.desc,
    noremap = true,
    -- expr = true,
    }
  act.desc = nil
end

return actions
