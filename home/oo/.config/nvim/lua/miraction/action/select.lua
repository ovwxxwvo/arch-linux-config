-- NVIM config,

act = require('miraction.actfunc')
local actions = {

  virtual_edit            = { act = act.virtual_edit,desc = 'virtual edit           ', },
  visual_char             = { act = 'v',             desc = 'visual char            ', },
  visual_line             = { act = 'V',             desc = 'visual line            ', },
  visual_block            = { act = '<C-v>',         desc = 'visual block           ', },
  select_all              = { act = '0ggVG',         desc = 'select all             ', },

  select_inner_word       = { act = '<C-v>iw',       desc = 'select inner word      ', },
  select_inner_sent       = { act = '<C-v>is',       desc = 'select inner sent      ', },
  select_inner_para       = { act = '<C-v>ip',       desc = 'select inner para      ', },
  select_inner_paren      = { act = '<C-v>i(',       desc = 'select inner paren     ', },
  select_inner_bracket    = { act = '<C-v>i[',       desc = 'select inner bracket   ', },
  select_inner_brace      = { act = '<C-v>i{',       desc = 'select inner brace     ', },
  select_inner_quote      = { act = '<C-v>i"',       desc = 'select inner quote     ', },
  select_inner_apostrophe = { act = '<C-v>i\'',      desc = 'select inner apostrophe', },
  select_inner_less       = { act = '<C-v>i<',       desc = 'select inner less      ', },
  select_inner_tag        = { act = '<C-v>it',       desc = 'select inner tag       ', },

  select_outer_word       = { act = '<C-v>aw',       desc = 'select outer word      ', },
  select_outer_sent       = { act = '<C-v>as',       desc = 'select outer sent      ', },
  select_outer_para       = { act = '<C-v>ap',       desc = 'select outer para      ', },
  select_outer_paren      = { act = '<C-v>a(',       desc = 'select outer paren     ', },
  select_outer_bracket    = { act = '<C-v>a[',       desc = 'select outer bracket   ', },
  select_outer_brace      = { act = '<C-v>a{',       desc = 'select outer brace     ', },
  select_outer_quote      = { act = '<C-v>a"',       desc = 'select outer quote     ', },
  select_outer_apostrophe = { act = '<C-v>a\'',      desc = 'select outer apostrophe', },
  select_outer_less       = { act = '<C-v>a<',       desc = 'select outer less      ', },
  select_outer_tag        = { act = '<C-v>at',       desc = 'select outer tag       ', },

}

for _, act in pairs(actions) do  act.mode = {'n',}  end

return actions
