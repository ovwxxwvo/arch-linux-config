-- NVIM config,

act = require('miraction.actfunc')
local actions = {

  ctrl_paste_clip = { act = act.ctrl_paste_clip, desc = 'paste clip', },

  ctrl_save_quick = { act = act.ctrl_save_quick, desc = 'save quick', },
  ctrl_save_sudo  = { act = act.ctrl_save_sudo , desc = 'save sudo ', },

  ctrl_win_close  = { act = act.ctrl_win_close , desc = 'win close ', },
  ctrl_win_switch = { act = act.ctrl_win_switch, desc = 'win switch', },

}

for _, act in pairs(actions) do  act.mode = {'n','x','s','o','i','c',}  end

return actions
