-- NVIM config,


local actions = {

  move_char_up       = { act = 'k',     desc = 'move char up       ', },
  move_char_dn       = { act = 'j',     desc = 'move char dn       ', },
  move_char_lt       = { act = 'h',     desc = 'move char lt       ', },
  move_char_rt       = { act = 'l',     desc = 'move char rt       ', },

  jump_word_beg      = { act = 'b',     desc = 'jump word beg      ', },
  jump_word_end      = { act = 'e',     desc = 'jump word end      ', },
  jump_line_beg      = { act = '^',     desc = 'jump line beg      ', },
  jump_line_end      = { act = '$',     desc = 'jump line end      ', },

  jump_para_up       = { act = '{',     desc = 'jump para up       ', },
  jump_para_dn       = { act = '}',     desc = 'jump para dn       ', },

  jump_page_up       = { act = '<C-u>', desc = 'jump page up       ', },
  jump_page_dn       = { act = '<C-d>', desc = 'jump page dn       ', },

  goto_history_prev  = { act = '<C-o>', desc = 'goto history prev  ', },
  goto_history_next  = { act = '<C-i>', desc = 'goto history next  ', },

  goto_search_prev   = { act = 'N',     desc = 'goto search prev   ', },
  goto_search_next   = { act = 'n',     desc = 'goto search next   ', },

  jump_file_beg      = { act = 'gg',    desc = 'jump file beg      ', },
  jump_file_end      = { act = 'G',     desc = 'jump file end      ', },
  jump_cursor_center = { act = 'zz',    desc = 'jump cursor center ', },
  jump_match         = { act = '%',     desc = 'jump match         ', },

  jump_screen_top    = { act = 'H',     desc = 'jump screen top    ', },
  jump_screen_mid    = { act = 'M',     desc = 'jump screen mid    ', },
  jump_screen_btm    = { act = 'L',     desc = 'jump screen btm    ', },

}

local mode = { 'n', 'x', }
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
