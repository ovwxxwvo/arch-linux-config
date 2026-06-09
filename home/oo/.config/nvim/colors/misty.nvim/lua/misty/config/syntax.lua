-- NVIM config,


--{ property,        fg,        bg,         rvrs,  bold, italic, uline, ucurl, udouble, },
local spec = {

  { "Folded",     "#303030", "NONE", false, false, true,  false, false, false, },
  { "Comment",    "#d0d0d0", "NONE", false, false, true,  false, false, false, },

  { "Constant",   "#a0f0f0", "NONE", false, false, false, false, false, false, },
  { "Underlined", "#30c0c0", "NONE", false, false, false, false, false, false, },
  { "String",     "#50a0a0", "NONE", false, false, false, false, false, false, },
  { "Number",     "#c0f0f0", "NONE", false, false, false, false, false, false, },
  { "Float",      "#c0f0f0", "NONE", false, false, false, false, false, false, },
  { "Boolean",    "#c0f0f0", "NONE", false, false, false, false, false, false, },

  { "Identifier", "#c0e0f0", "NONE", false, false, false, false, false, false, },
  { "Preproc",    "#a0d0f0", "NONE", false, false, false, false, false, false, },

  { "Function",   "#c0f0e0", "NONE", false, false, false, false, false, false, },
  { "Method",     "#a0f0d0", "NONE", false, false, false, false, false, false, },

  { "Statement",  "#f0f0c0", "NONE", false, false, false, false, false, false, },
  { "Struct",     "#c0f0c0", "NONE", false, false, false, false, false, false, },
  { "Type",       "#f0c0e0", "NONE", false, false, false, false, false, false, },

  { "Special",    "#e0f0c0", "NONE", false, false, false, false, false, false, },

  { "Operator",   "#e0c0f0", "NONE", false, false, false, false, false, false, },

}
return spec
