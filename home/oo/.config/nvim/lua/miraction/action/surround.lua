-- NVIM config,


local actions = {

  surround_del_pairs      = { act = 'dppXX', desc = '', },

  surround_add_paren      = { act = 'c(<C-r>")<ESC>',   desc = '', },
  surround_add_bracket    = { act = 'c[<C-r>"]<ESC>',   desc = '', },
  surround_add_brace      = { act = 'c{<C-r>"}<ESC>',   desc = '', },
  surround_add_quote      = { act = 'c"<C-r>""<ESC>',   desc = '', },
  surround_add_apostrophe = { act = 'c\'<C-r>"\'<ESC>', desc = '', },
  surround_add_less       = { act = 'c<<C-r>"><ESC>',   desc = '', },
  surround_add_tag        = { act = 'c<<C-r>"><ESC>',   desc = '', },

}

local mode    = { 'x' }
for _, act in pairs(actions) do
  act.mode = mode
  act.opts = {
    desc = act.desc,
    noremap = true,
    -- expr = true,
    }
  act.desc = nil
end

return actions
