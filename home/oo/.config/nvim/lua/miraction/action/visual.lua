-- NVIM config,

act = require('miraction.actfunc')
local actions = {

  vis_delete_pairs       = { act = act.vis_delete_pairs,       desc = 'vis_delete_pairs      ', },

  vis_insert_parens      = { act = act.vis_insert_parens     , desc = 'vis_insert_parens     ', },
  vis_insert_brackets    = { act = act.vis_insert_brackets   , desc = 'vis_insert_brackets   ', },
  vis_insert_braces      = { act = act.vis_insert_braces     , desc = 'vis_insert_braces     ', },
  vis_insert_quotes      = { act = act.vis_insert_quotes     , desc = 'vis_insert_quotes     ', },
  vis_insert_apostrophes = { act = act.vis_insert_apostrophes, desc = 'vis_insert_apostrophes', },
  vis_insert_angbkts     = { act = act.vis_insert_angbkts    , desc = 'vis_insert_angbkts    ', },
  vis_insert_tags        = { act = act.vis_insert_tags       , desc = 'vis_insert_tags       ', },

  -- vis_insert_parens      = { act = 'c(<C-r>")<ESC>',   desc = 'vis_insert_parens     ', },
  -- vis_insert_brackets    = { act = 'c[<C-r>"]<ESC>',   desc = 'vis_insert_brackets   ', },
  -- vis_insert_braces      = { act = 'c{<C-r>"}<ESC>',   desc = 'vis_insert_braces     ', },
  -- vis_insert_quotes      = { act = 'c"<C-r>""<ESC>',   desc = 'vis_insert_quotes     ', },
  -- vis_insert_apostrophes = { act = 'c\'<C-r>"\'<ESC>', desc = 'vis_insert_apostrophes', },
  -- vis_insert_angbkts     = { act = 'c<<C-r>"><ESC>',   desc = 'vis_insert_angbkts    ', },
  -- vis_insert_tags        = { act = 'c<<C-r>"><ESC>',   desc = 'vis_insert_tags       ', },

}

for _, act in pairs(actions) do  act.mode = {'x','s',}  end

return actions
