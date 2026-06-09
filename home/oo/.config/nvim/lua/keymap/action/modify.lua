-- NVIM config,


local actions               = {

  insert_char_beg   = { act = 'i',     desc = 'insert char beg  ', },
  insert_char_end   = { act = 'a',     desc = 'insert char end  ', },
  insert_line_below = { act = 'o',     desc = 'insert line below', },

  replace_char      = { act = 'r',     desc = 'replace char     ', },
  change_text       = { act = 'c',     desc = 'change text      ', },
  delete_line       = { act = 'd',     desc = 'delete line      ', },
  delete_char       = { act = 'x',     desc = 'delete char      ', },

  insert_line_beg   = { act = 'I',     desc = 'insert line beg  ', },
  insert_line_end   = { act = 'A',     desc = 'insert line end  ', },
  insert_line_above = { act = 'O',     desc = 'insert line above', },

  replace_mode      = { act = 'R',     desc = 'replace mode     ', },
  change_line_end   = { act = 'C',     desc = 'change line end  ', },
  delete_line_end   = { act = 'D',     desc = 'delete line end  ', },
  delete_char_beg   = { act = 'X',     desc = 'delete char beg  ', },

  toggle_case       = { act = '~',     desc = 'toggle case      ', },
  make_uppercase    = { act = 'gU',    desc = 'make uppercase   ', },
  make_lowercase    = { act = 'gu',    desc = 'make lowercase   ', },
  make_incnumber    = { act = '<C-a>', desc = 'make incnumber   ', },
  make_decnumber    = { act = '<C-x>', desc = 'make decnumber   ', },

}

local mode = { 'n', 'x', 's', 'o' }
for _, v in pairs(actions) do
  v.mode = mode
  v.noremap = true
end

return actions
