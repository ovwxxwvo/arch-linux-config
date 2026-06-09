-- NVIM config,


local km  = require("keymap")
local act = km.actions
km.setup({

  { 'a',  act.insert_char_beg   },
  { 's',  act.insert_char_end   },
  { 'w',  act.insert_line_below },

  { 'r',  act.replace_char      },
  { 'c',  act.change_text       },
  { 'd',  act.delete_line       },
  { 'x',  act.delete_char       },

  { 'A',  act.insert_line_beg   },
  { 'S',  act.insert_line_end   },
  { 'W',  act.insert_line_above },

  { 'R',  act.replace_mode      },
  { 'C',  act.change_line_end   },
  { 'D',  act.delete_line_end   },
  { 'X',  act.delete_char_beg   },

  { 'e',  act.toggle_case       },
  { 'T',  act.make_uppercase    },
  { 'B',  act.make_lowercase    },
  { 'Q',  act.make_incnumber    },
  { 'Z',  act.make_decnumber    },

})
