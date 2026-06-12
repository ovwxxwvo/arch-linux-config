-- NVIM config,


local actions         = {

  -- action        = { act = '',         desc = '',                 },

  help_keyword     = { act = 'K',        desc = 'help keyword',     },

  search_start     = { act = '/',        desc = 'search start',     },
  search_stop      = { act = '',         desc = 'search stop ',     },

  fold_local_all   = { act = 'zA',       desc = 'fold_local_all ',  },
  fold_local_one   = { act = 'za',       desc = 'fold_local_one ',  },
  fold_global_all  = { act = '',         desc = 'fold_global_all',  },
  fold_global_one  = { act = '',         desc = 'fold_global_one',  },

  backspace_char   = { act = '\"_xh',    desc = 'backspace char',   },
  enter_line_below = { act = 'o<ESC>',   desc = 'enter line below', },
  space_char_beg   = { act = 'a <ESC>h', desc = 'space char beg',   },
  space_char_end   = { act = 'i <ESC>l', desc = 'space char end',   },

}

local a = actions
a.search_stop.act     = function() vim.cmd('nohlsearch') end
a.fold_global_all.act = function() vim.opt.foldlevel = vim.opt.foldlevel:get() == 0 and 88 or 0 end
a.fold_global_one.act = function() vim.opt.foldlevel = vim.opt.foldlevel:get() == 0 and  1 or 0 end

local mode = { 'n' }
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
