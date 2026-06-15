-- NVIM config,

act = require('miraction.actfunc')
local actions = {

  help_keyword       = { act = 'K',                    desc = 'help_keyword      ', },
  search_start       = { act = '/',                    desc = 'search_start      ', },
  search_stop        = { act = act.search_stop,        desc = 'search_stop       ', },

  fold_local_all     = { act = 'zA',                   desc = 'fold_local_all    ', },
  fold_local_one     = { act = 'za',                   desc = 'fold_local_one    ', },
  fold_global_all    = { act = act.fold_global_all,    desc = 'fold_global_all   ', },
  fold_global_one    = { act = act.fold_glocal_one,    desc = 'fold_global_one   ', },

  backspace_char     = { act = '\"_xh',                desc = 'backspace_char    ', },
  enter_line_below   = { act = 'o<ESC>',               desc = 'enter_line_below  ', },
  space_char_beg     = { act = 'a <ESC>h',             desc = 'space_char_beg    ', },
  space_char_end     = { act = 'i <ESC>l',             desc = 'space_char_end    ', },

  lsp_hover          = { act = act.lsp_hover,          desc = 'lsp_hover         ', },
  lsp_references     = { act = act.lsp_references,     desc = 'lsp_references    ', },
  lsp_definition     = { act = act.lsp_definition,     desc = 'lsp_definition    ', },
  lsp_typedef        = { act = act.lsp_typedef,        desc = 'lsp_typedef       ', },
  lsp_implementation = { act = act.lsp_implementation, desc = 'lsp_implementation', },
  lsp_rename         = { act = act.lsp_rename,         desc = 'lsp_rename        ', },
  lsp_format         = { act = act.lsp_format,         desc = 'lsp_format        ', },

}

for _, act in pairs(actions) do  act.mode = {'n',}  end

return actions
