-- NVIM config,


local km  = require("keymap")
local act = km.actions
km.setup({

  { '<C-s>', act.ins_jump_word_beg   },
  { '<C-d>', act.ins_jump_word_end   },
  { '<C-a>', act.ins_jump_line_beg   },
  { '<C-f>', act.ins_jump_line_end   },

  { '<C-w>', act.ins_delete_word_beg },
  { '<C-e>', act.ins_delete_word_end },
  { '<C-x>', act.ins_delete_line_beg },
  { '<C-c>', act.ins_delete_line_end },

  { '\'',    act.ins_char_apostrophe },
  { '"',     act.ins_char_quotedbl   },
  { '(',     act.ins_char_paren      },
  { '[',     act.ins_char_bracket    },
  { '{',     act.ins_char_brace      },

})

