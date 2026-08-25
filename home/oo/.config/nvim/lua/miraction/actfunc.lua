-- NVIM config,


local M = {}

M.open_file_manager = function () vim.cmd('update|only|vsplit|wincmd L|Yazi')    end
M.run_file          = function () vim.cmd('update') require('mirunner').launch() end

M.ctrl_paste_clip = function()
  local mode = vim.fn.mode()
  if mode == 'n' or mode == 'x' or mode == 's' then
    vim.fn.feedkeys('p', 'n')
  elseif mode == 'v' or mode == 'V' or mode == '\22' then
    vim.fn.feedkeys('p', 'n')
  elseif mode == 'i' or mode == 'c' then
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<C-r>+', true, false, true), 'n', false)
  elseif mode == 'o' then
    return
  end
  end
M.ctrl_save_quick = function() vim.cmd('sil update') vim.notify("File Saved") end
M.ctrl_save_sudo  = function() vim.cmd('sil write !sudo tee % >/dev/null')    end
M.ctrl_win_switch = function() vim.cmd("sil! update | wincmd w")              end
M.ctrl_win_close  = function()
  local buf = vim.api.nvim_get_current_buf()
  local name = vim.api.nvim_buf_get_name(buf)
  local mod = vim.bo[buf].modified
  if name ~= "" then
    vim.cmd(mod and "sil! wq" or "sil! q")
  else
    vim.cmd("sil! q!")
  end
  end

M.vis_delete_pairs = function()
  local mode = vim.fn.mode()
  if mode == 'v' then
    vim.fn.feedkeys('dpXX', 'n')
  elseif mode == 'V' then
    return
  elseif mode == '\22' then
    vim.fn.feedkeys('dpXX', 'n')
  end
  end
M.vis_insert_pairs = function(sym_lt, sym_rt)
  if not sym_lt or not sym_rt then return end
  if sym_lt == '' or sym_rt == '' then return end
  local mode = vim.fn.mode()
  if mode == 'v' then
    vim.fn.feedkeys('di'..sym_lt..sym_rt, 'n')
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<ESC>', true, false, true), 'n', false)
    vim.fn.feedkeys('P', 'n')
  elseif mode == 'V' then
    vim.fn.feedkeys('dO'..sym_lt..'\n'..sym_rt, 'n')
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<ESC>', true, false, true), 'n', false)
    vim.fn.feedkeys('P', 'n')
  elseif mode == '\22' then
    vim.fn.feedkeys('c'..sym_lt..sym_rt, 'n')
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<ESC>', true, false, true), 'n', false)
    vim.fn.feedkeys('P', 'n')
  end
  end
M.vis_insert_parens      = function () M.vis_insert_pairs('(',')') end
M.vis_insert_brackets    = function () M.vis_insert_pairs('[',']') end
M.vis_insert_braces      = function () M.vis_insert_pairs('{','}') end
M.vis_insert_quotes      = function () M.vis_insert_pairs('"','"') end
M.vis_insert_apostrophes = function () M.vis_insert_pairs("'","'") end
M.vis_insert_angbkts     = function () M.vis_insert_pairs('<','>') end
M.vis_insert_tags        = function () M.vis_insert_pairs('<','>') end

M.virtual_edit = function() vim.cmd('set ve=all') end

M.search_stop     = function() vim.cmd('nohlsearch') end
M.fold_global_all = function() vim.opt.foldlevel = vim.opt.foldlevel:get() == 0 and 88 or 0 end
M.fold_global_one = function() vim.opt.foldlevel = vim.opt.foldlevel:get() == 0 and  1 or 0 end

-- lspbuf = require('vim.lsp.buf')
M.lsp_hover          = require('vim.lsp.buf').hover
M.lsp_references     = require('vim.lsp.buf').references
M.lsp_definition     = require('vim.lsp.buf').definition
M.lsp_typedef        = require('vim.lsp.buf').type_definition
M.lsp_implementation = require('vim.lsp.buf').implementation
M.lsp_rename         = require('vim.lsp.buf').rename
-- M.lsp_format         = require('vim.lsp.buf').format
M.lsp_format         = require('mirormat').format

return M

