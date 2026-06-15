-- NVIM config,


local actions = {

  ins_jump_word_beg     = { act = '<ESC>bi',    desc = 'ins_jump_word_beg    ', },
  ins_jump_word_end     = { act = '<ESC>ea',    desc = 'ins_jump_word_end    ', },
  ins_jump_line_beg     = { act = '<C-o>^',     desc = 'ins_jump_line_beg    ', },
  ins_jump_line_end     = { act = '<C-o>$',     desc = 'ins_jump_line_end    ', },

  ins_delete_word_beg   = { act = '<C-o>db',    desc = 'ins_delete_word_beg  ', },
  ins_delete_word_end   = { act = '<C-o>de',    desc = 'ins_delete_word_end  ', },
  ins_delete_line_beg   = { act = '<C-o>d0',    desc = 'ins_delete_line_beg  ', },
  ins_delete_line_end   = { act = '<C-o>d$',    desc = 'ins_delete_line_end  ', },

  ins_double_apostrophe = { act = '\'\'<Left>', desc = 'ins_double_apostrophe', },
  ins_double_quotedbl   = { act = '""<Left>',   desc = 'ins_double_quotedbl  ', },
  ins_double_paren      = { act = '()<Left>',   desc = 'ins_double_paren     ', },
  ins_double_bracket    = { act = '[]<Left>',   desc = 'ins_double_bracket   ', },
  ins_double_brace      = { act = '{}<Left>',   desc = 'ins_double_brace     ', },

}

for _, act in pairs(actions) do  act.mode = {'i',}  end

return actions
