-- NVIM config,


local actions = {

  ctrl_paste_clip = { act = '<C-r>"', desc = 'ctrl paste clip', },

  ctrl_quick_save = { act = '',       desc = 'ctrl quick save', },
  ctrl_sudo_save  = { act = '',       desc = 'ctrl sudo save',  },

  ctrl_win_close  = { act = '',       desc = 'ctrl win close ', },
  ctrl_win_switch = { act = '',       desc = 'ctrl win switch', },

}

local a = actions
a.ctrl_quick_save.act = function() vim.cmd('sil update') vim.notify("File Saved") end
a.ctrl_sudo_save.act  = function() vim.cmd('sil w !sudo tee % >/dev/null') end
a.ctrl_win_switch.act = function() vim.cmd("sil! update | wincmd w") end
a.ctrl_win_close.act  = function()
  local buf = vim.api.nvim_get_current_buf()
  local name = vim.api.nvim_buf_get_name(buf)
  local mod = vim.bo[buf].modified
  if name ~= "" then
    vim.cmd(mod and "sil! wq" or "sil! q")
  else
    vim.cmd("sil! q!")
  end
end

a.ctrl_paste_clip.mode = { 'i', 'c' }
a.ctrl_quick_save.mode = { 'n', 'x', 's', 'o' }
a.ctrl_sudo_save.mode  = { 'n', 'x', 's', 'o' }
a.ctrl_win_close.mode  = { 'n', 'i', 'c', 'x', 's', 'o' }
a.ctrl_win_switch.mode = { 'n', 'i', 'c', 'x', 's', 'o' }

-- local mode = { 'n', 'i', 'c', 'x', 's', 'o' }
for _, v in pairs(actions) do
  -- v.mode = mode
  v.noremap = true
end

return actions
