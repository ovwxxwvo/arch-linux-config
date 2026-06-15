-- NVIM config,


local actions = {

  cmd_jump_word_beg   = { act = '<C-Left>',  desc = 'cmd jump word beg  ', },
  cmd_jump_word_end   = { act = '<C-Right>', desc = 'cmd jump word end  ', },
  cmd_jump_line_beg   = { act = '<C-a>',     desc = 'cmd jump line beg  ', },
  cmd_jump_line_end   = { act = '<C-e>',     desc = 'cmd jump line end  ', },

  cmd_delete_word_beg = { act = '<C-w>',     desc = 'cmd delete word beg', },
  cmd_delete_word_end = { act = '<C-Right><C-w>', desc = 'cmd delete word end', },
  cmd_delete_line_beg = { act = '<C-u>',     desc = 'cmd delete line beg', },
  cmd_delete_line_end = { act = '',          desc = 'cmd delete line end', },

}

for _, act in pairs(actions) do  act.mode = {'c',}  end

return actions
