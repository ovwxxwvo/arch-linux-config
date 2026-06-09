-- NVIM config,


--{ property,        fg,        bg,         rvrs,  bold, italic, uline, ucurl, udouble, },
local spec = {

  { "normal",       "NONE",    "NONE",    false, false, false, false, false, false, },
  { "StatusLine",   "NONE",    "NONE",    false, false, false, false, false, false, },
  { "MsgArea",      "NONE",    "NONE",    false, false, false, false, false, false, },
  { "WinSeparator", "#f0f0e0", "#101010", false, false, false, false, false, true, },
  { "VertSplit",    "#f0f0e0", "#101010", false, false, false, false, false, false, },
  { "QuickFixline", "#f0f0c0", "#101010", false, false, false, false, false, false, },
  { "NormalNC",     "NONE",    "#202020", false, false, false, false, false, false, },
  { "StatusLineNC", "NONE",    "#202020", false, false, false, false, false, false, },

  { "TabLine",      "NONE",    "NONE",    false, false, false, false, false, false, },
  { "TabLineFill",  "NONE",    "NONE",    false, false, false, false, false, false, },
  { "WildMenu",     "NONE",    "NONE",    false, false, false, false, false, false, },
  { "TabLineSel",   "NONE",    "#f0f0f0", false, true,  false, false, false, false, },

  { "Pmenu",        "NONE",    "NONE",    false, false, false, false, false, false, },
  { "PmenuSel",     "NONE",    "#003020", false, true,  false, false, false, false, },

  { "Cursor",       "#101010", "#f0f0f0", false, false, false, false, false, false, },
  { "CursorLine",   "NONE",    "#202020", false, true,  false, false, false, false, },
  { "CursorColumn", "NONE",    "#001010", false, true,  false, false, false, false, },
  { "CursorLineNr", "#f0f0a0", "NONE",    false, false, false, false, false, false, },
  { "LineNr",       "#305000", "NONE",    false, false, false, false, false, false, },

  { "Visual",       "NONE",    "#003020", false, false, false, false, false, false, },
  { "Search",       "#e0e0e0", "#303000", false, true,  false, false, false, false, },
  { "CurSearch",    "#202020", "#f0f0c0", false, true,  false, false, false, false, },
  { "MatchParen",   "#f0f0f0", "#8030c0", false, true,  false, false, true,  true, },
  { "Folded",       "#808080", "NONE",    false, false, false, false, false, false, },

  { "Question",     "#f0d0a0", "NONE",    false, false, false, false, false, false, },
  { "SpecialKey",   "#f0f0a0", "NONE",    false, false, false, false, false, false, },
  { "Directory",    "#d0f0a0", "NONE",    false, false, false, false, false, false, },
  { "Title",        "#a0f0f0", "NONE",    false, false, false, false, false, false, },

  { "MoreMsg",      "#f0f0a0", "NONE",    false, false, false, false, false, false, },
  { "ModeMsg",      "#f0d0a0", "NONE",    false, false, false, false, false, false, },
  { "WarningMsg",   "#f0a0f0", "NONE",    false, false, false, false, false, false, },
  { "ErrorMsg",     "#f0a0a0", "NONE",    false, false, false, false, false, false, },

  { "Ignore",       "#c0f0e0", "#303030", false, false, false, false, false, false, },
  { "Todo",         "#001010", "#f0f0c0", false, false, false, false, false, false, },
  { "Error",        "#e0f0f0", "#300000", false, false, false, false, false, false, },

}

return spec
