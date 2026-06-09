-- NVIM config,


local lspbuff   = require("vim.lsp.buf")
local telescope = require("telescope.builtin")
local conform   = require("conform")

local actions = {

  lsp_hover          = {  act = lspbuff.hover,                              desc = "" , mode = { 'n'                } },
  lsp_references     = {  act = lspbuff.references,                         desc = "" , mode = { 'n'                } },
  lsp_definition     = {  act = lspbuff.definition,                         desc = "" , mode = { 'n'                } },
  lsp_typedef        = {  act = lspbuff.type_definition,                    desc = "" , mode = { 'n'                } },
  lsp_implementation = {  act = lspbuff.implementation,                     desc = "" , mode = { 'n'                } },

  find_file          = {  act = telescope.find_files,                       desc = "" , mode = { 'n'                } },
  find_text          = {  act = telescope.live_grep,                        desc = "" , mode = { 'n'                } },
  find_buffer        = {  act = telescope.buffers,                          desc = "" , mode = { 'n'                } },
  find_help          = {  act = telescope.help_tags,                        desc = "" , mode = { 'n'                } },

  lsp_rename         = {  act = lspbuff.rename,                             desc = "" , mode = { 'n', 'x', 's', 'o' } },
  lsp_format         = {  act = conform.format,                             desc = "" , mode = { 'n', 'x', 's', 'o' } },

  mini_surround      = {  act = function() vim.fn.feedkeys("sa", "mt") end, desc = "" , mode = { 'n', 'x', 's', 'o' } },
  mini_align         = {  act = function() vim.fn.feedkeys("ga", "mt") end, desc = "" , mode = { 'n', 'x', 's', 'o' } },
  mini_align_view    = {  act = function() vim.fn.feedkeys("gA", "mt") end, desc = "" , mode = { 'n', 'x', 's', 'o' } },

  -- toggle_tabbar      = {  act = ":TagbarToggle<CR>",                        desc = "" , mode = { 'n', 'x', 's', 'o' } },
  toggle_tabbar      = {  act = function() vim.cmd("TagbarToggle") end,     desc = "" , mode = { 'n', 'x', 's', 'o' } },
  easy_motion        = {  act = "<Plug>(easymotion-overwin-f)",             desc = "" , mode = { 'n', 'x', 's', 'o' } },

}

-- local mode = { 'n' }
for _, v in pairs(actions) do
  -- v.mode = mode
  v.noremap = true
end

return actions
