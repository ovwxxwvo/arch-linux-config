-- NVIM config,


local km  = require("keymap")
local act = km.actions
km.setup({

  { 'k',   act.move_char_up       },
  { 'l',   act.move_char_dn       },
  { 'j',   act.move_char_lt       },
  { ';',   act.move_char_rt       },

  { ',',   act.jump_word_beg      },
  { '.',   act.jump_word_end      },
  { 'm',   act.jump_line_beg      },
  { '/',   act.jump_line_end      },

  { 'i',   act.jump_para_up       },
  { 'o',   act.jump_para_dn       },

  { 'I',   act.jump_page_up       },
  { 'O',   act.jump_page_dn       },

  { 'K',   act.goto_history_prev  },
  { 'L',   act.goto_history_next  },

  { 'h',   act.goto_search_prev   },
  { 'n',   act.goto_search_next   },

  { 'gt',  act.jump_file_beg      },
  { 'gb',  act.jump_file_end      },
  { 'gs',  act.jump_cursor_center },
  { 'gf',  act.jump_match         },

  { 'gy',  act.jump_screen_top    },
  { 'gh',  act.jump_screen_mid    },
  { 'gn',  act.jump_screen_btm    },

})
