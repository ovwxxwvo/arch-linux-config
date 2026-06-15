-- NVIM config,


local actions = {

  insert_char_beg   = { act = 'i',     desc = 'insert char beg   ', },
  insert_char_end   = { act = 'a',     desc = 'insert char end   ', },
  insert_line_below = { act = 'o',     desc = 'insert line below ', },
  insert_line_beg   = { act = 'I',     desc = 'insert line beg   ', },
  insert_line_end   = { act = 'A',     desc = 'insert line end   ', },
  insert_line_above = { act = 'O',     desc = 'insert line above ', },

  replace_char      = { act = 'r',     desc = 'replace char      ', },
  replace_mode      = { act = 'R',     desc = 'replace mode      ', },

  change_yank       = { act = 'c',     desc = 'change yank       ', },
  delete_yank       = { act = 'd',     desc = 'delete yank       ', },
  delete_yank_char  = { act = 'x',     desc = 'delete yank char  ', },

  toggle_case       = { act = '~',     desc = 'toggle case       ', },
  make_uppercase    = { act = 'gU',    desc = 'make uppercase    ', },
  make_lowercase    = { act = 'gu',    desc = 'make lowercase    ', },
  make_incnumber    = { act = '<C-a>', desc = 'make incnumber    ', },
  make_decnumber    = { act = '<C-x>', desc = 'make decnumber    ', },

}

for _, act in pairs(actions) do  act.mode = {'n','x','s',}  end

return actions
