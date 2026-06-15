-- NVIM config,


local km  = require("miraction")
local act = km.actions
km.setup({

  { 'vv',  act.virtual_edit            },
  { 'vt',  act.visual_char             },
  { 'vg',  act.visual_line             },
  { 'vb',  act.visual_block            },

  { 'va',  act.select_all              },

  { 'vw',  act.select_inner_word       },
  { 'vs',  act.select_inner_sent       },
  { 'vx',  act.select_inner_para       },
  { 've',  act.select_inner_paren      },
  { 'vd',  act.select_inner_bracket    },
  { 'vc',  act.select_inner_brace      },
  { 'vz',  act.select_inner_less       },
  { 'vr',  act.select_inner_quote      },
  { 'vf',  act.select_inner_apostrophe },
  { 'vq',  act.select_inner_tag        },

  { 'vW',  act.select_outer_word       },
  { 'vS',  act.select_outer_sent       },
  { 'vX',  act.select_outer_para       },
  { 'vE',  act.select_outer_paren      },
  { 'vD',  act.select_outer_bracket    },
  { 'vC',  act.select_outer_brace      },
  { 'vZ',  act.select_outer_less       },
  { 'vR',  act.select_outer_quote      },
  { 'vF',  act.select_outer_apostrophe },
  { 'vQ',  act.select_outer_tag        },

})
