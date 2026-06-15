-- NVIM config,

act = require('miraction.actfunc')
local actions = {

  open_file_manager = { act = act.open_file_manager, desc = 'open file manager' },
  run_file          = { act = act.run_file,          desc = "run file"          },

}

for _, act in pairs(actions) do  act.mode = {'n','x','s','o','i','c',}  end

return actions
