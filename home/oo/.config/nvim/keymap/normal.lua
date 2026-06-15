-- NVIM config,


local km  = require("miraction")
local act = km.actions
km.setup({

  { 'H',       act.help_keyword      },

  { '?',       act.search_start      },
  { 'N',       act.search_stop       },

  { 't',       act.fold_local_all    },
  { 'T',       act.fold_local_one    },
  { 'b',       act.fold_global_all   },
  { 'B',       act.fold_global_one   },

  { '<BS>',    act.backspace_char    },
  { '<ENTER>', act.enter_line_below  },
  { '>',       act.space_char_beg    },
  { '<',       act.space_char_end    },

  { "H",       act.lsp_hover         },
  { "gr",      act.lsp_references    },
  { "gd",      act.lsp_definition    },
  { "ge",      act.lsp_typedef       },
  { "gc",      act.lsp_implementation},
  { "<C-n>",   act.lsp_rename        },
  { "<Space>f",act.lsp_format        },

})
