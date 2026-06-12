-- NVIM config,


local km  = require("miraction")
local act = km.actions
km.setup({

  { 'a',  act.insert_char_beg   },
  { 's',  act.insert_char_end   },
  { 'w',  act.insert_line_below },
  { 'A',  act.insert_line_beg   },
  { 'S',  act.insert_line_end   },
  { 'W',  act.insert_line_above },

  { 'r',  act.replace_char      },
  { 'R',  act.replace_mode      },

  { 'c',  act.change_yank       },
  { 'd',  act.delete_yank       },
  { 'x',  act.delete_yank_char  },

  { 'ee', act.toggle_case       },
  { 'et', act.make_uppercase    },
  { 'eb', act.make_lowercase    },
  { 'T',  act.make_incnumber    },
  { 'B',  act.make_decnumber    },

})
