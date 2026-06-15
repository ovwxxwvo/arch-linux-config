-- NVIM config,


local km  = require("miraction")
local act = km.actions
km.setup({

  { '<C-v>',     act.ctrl_paste_clip },

  { '<C-s>',     act.ctrl_save_quick },
  { '<C-\\>',    act.ctrl_save_sudo  },

  { '<C-q>',     act.ctrl_win_close  },
  { '<C-SPACE>', act.ctrl_win_switch },

})
