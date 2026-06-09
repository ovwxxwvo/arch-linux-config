-- NVIM config,


local M = {}
-- { "normal",        "NONE",    "NONE",     false, false, false, false, false, false, },

M.set_color = function(spec)
  for i, v in ipairs(spec) do
    vim.api.nvim_set_hl(0, v[1], {
      fg          = v[2],
      bg          = v[3],
      reverse     = v[4],
      bold        = v[5],
      italic      = v[6],
      underline   = v[7],
      undercurl   = v[8],
      underdouble = v[9],
      -- link= SomeOtherHighlight,
      -- ctermfg= ,
      -- ctermbg= ,
    })
  end
end

return M

-- local function set_popup(t)
--   local module = t[1]
--   if not pcall(require, module) then return end
--   local property = t[2]
--   for i, v in ipairs(property) do
--     vim.api.nvim_set_hl(0, v[1], {
--       fg          = v[2],
--       bg          = v[3],
--       reverse     = v[4],
--       bold        = v[5],
--       italic      = v[6],
--       underline   = v[7],
--       undercurl   = v[8],
--       underdouble = v[9],
--       -- link= SomeOtherHighlight,
--       -- ctermfg= ,
--       -- ctermbg= ,
--     })
--   end
-- end

-- local function set_sline(t)
--   local module = t[1]
--   if not pcall(require, module) then return end
--   local property = t[2]
--   require("lualine").setup { options = { theme = property } }
-- end
