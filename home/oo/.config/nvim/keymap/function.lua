-- NVIM config,


local km  = require("keymap")
local act = km.actions
km.setup({

  { '<F1>',  act.open_file_manager },
  { "<F5>",  act.run_file          },

})
