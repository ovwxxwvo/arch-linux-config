-- NVIM config,


local km  = require("keymap")
local act = km.actions
km.setup({

  { '<C-s>',  act.cmd_jump_word_beg   },
  { '<C-d>',  act.cmd_jump_word_end   },
  { '<C-a>',  act.cmd_jump_line_beg   },
  { '<C-f>',  act.cmd_jump_line_end   },

  { '<C-w>',  act.cmd_delete_word_beg },
  { '<C-e>',  act.cmd_delete_word_end },
  { '<C-x>',  act.cmd_delete_line_beg },
  { '<C-c>',  act.cmd_delete_line_end },

})

