-- NVIM config,


local km  = require("miraction")
local act = km.actions
km.setup({

  { '<C-s>', act.ins_jump_word_beg     },
  { '<C-d>', act.ins_jump_word_end     },
  { '<C-a>', act.ins_jump_line_beg     },
  { '<C-f>', act.ins_jump_line_end     },

  { '<C-w>', act.ins_delete_word_beg   },
  { '<C-e>', act.ins_delete_word_end   },
  { '<C-x>', act.ins_delete_line_beg   },
  { '<C-c>', act.ins_delete_line_end   },

  { '\'',    act.ins_double_apostrophe },
  { '"',     act.ins_double_quotedbl   },
  { '(',     act.ins_double_paren      },
  { '[',     act.ins_double_bracket    },
  { '{',     act.ins_double_brace      },

})

