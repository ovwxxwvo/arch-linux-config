-- NVIM config,


local km  = require("miraction")
local act = km.actions
km.setup({

  { 'D',  act.vis_delete_pairs       },

  { '(',  act.vis_insert_parens      },
  { '[',  act.vis_insert_brackets    },
  { '{',  act.vis_insert_braces      },
  { '"',  act.vis_insert_quotes      },
  { '\'', act.vis_insert_apostrophes },
  { '<',  act.vis_insert_angbkts     },
  { 't',  act.vis_insert_tags        },

})
