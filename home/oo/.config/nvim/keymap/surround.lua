-- NVIM config,


local km  = require("miraction")
local act = km.actions
km.setup({

  { 'D',  act.surround_del_pairs      },

  { '(',  act.surround_add_paren      },
  { '[',  act.surround_add_bracket    },
  { '{',  act.surround_add_brace      },
  { '"',  act.surround_add_quote      },
  { '\'', act.surround_add_apostrophe },
  { '<',  act.surround_add_less       },
  { 't',  act.surround_add_tag        },

})
