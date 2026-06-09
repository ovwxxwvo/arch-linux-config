-- NVIM config,


local actions = {

  ins_jump_word_beg   = { act = '<ESC>bi', desc = 'ins jump word beg  ', },
  ins_jump_word_end   = { act = '<ESC>ea', desc = 'ins jump word end  ', },
  ins_jump_line_beg   = { act = '<C-o>^',  desc = 'ins jump line beg  ', },
  ins_jump_line_end   = { act = '<C-o>$',  desc = 'ins jump line end  ', },

  ins_delete_word_beg = { act = '<C-o>db', desc = 'ins delete word beg', },
  ins_delete_word_end = { act = '<C-o>de', desc = 'ins delete word end', },
  ins_delete_line_beg = { act = '<C-o>d0', desc = 'ins delete line beg', },
  ins_delete_line_end = { act = '<C-o>d$', desc = 'ins delete line end', },

  ins_char_apostrophe = { act = '\'\'<Left>', desc = '', },
  ins_char_quotedbl   = { act = '""<Left>',   desc = '', },
  ins_char_paren      = { act = '()<Left>',   desc = '', },
  ins_char_bracket    = { act = '[]<Left>',   desc = '', },
  ins_char_brace      = { act = '{}<Left>',   desc = '', },

}


local mode    = { 'i' }
for _, v in pairs(actions) do
  v.mode = mode
  v.noremap = true
end

return actions
