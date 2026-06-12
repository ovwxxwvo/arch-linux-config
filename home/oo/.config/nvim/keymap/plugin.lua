-- NVIM config,


local km  = require("miraction")
local act = km.actions
km.setup({

  -- { "pp",        act.paste_unname       },
  -- { "pu",        act.paste_yank         },
  -- { "po",        act.paste_smaller      },

  { "H",         act.lsp_hover          },
  { "gr",        act.lsp_references     },
  { "gd",        act.lsp_definition     },
  { "ge",        act.lsp_typedef        },
  { "gc",        act.lsp_implementation },

  { "ff",        act.find_file          },
  { "fg",        act.find_text          },
  { "fb",        act.find_buffer        },
  { "fh",        act.find_help          },

  { "<C-n>",     act.lsp_rename         },
  { "<Space>f",  act.lsp_format         },

  { "<Space>a",  act.mini_align         },
  { "<Space>A",  act.mini_align_view    },

  { "<C-t>",     act.toggle_tabbar      },
  -- { "z",         act.easy_motion        },

})
