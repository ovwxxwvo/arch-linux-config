-- NVIM config,

local uid        = vim.loop.getuid()
local temp_dir  = '/tmp/nvim-' .. uid
local reg = {
  system = { name = '+', file = temp_dir .. '/register-system' },
  unname = { name = '"', file = temp_dir .. '/register-unname' },
  yank   = { name = 'y', file = temp_dir .. '/register-yank'   },
  delete = { name = 'x', file = temp_dir .. '/register-delete' },
  }

local function init_env()
  if vim.fn.isdirectory(temp_dir) == 0 then
    vim.fn.mkdir(temp_dir, 'p')
  end
end

local function read_share(reg_file)
  local ok, lines = pcall(vim.fn.readfile, reg_file)
  if not ok or #lines < 2 then return nil, nil end
  local share_type = lines[1]
  local share_text = table.concat(lines, '\n', 2)
  -- print(share_text)
  return share_type, share_text
end

local function write_share(reg_file, reg_type, reg_text)
  vim.fn.writefile({ reg_type, reg_text }, reg_file)
  -- print(reg_text)
end

local function paste_share(register)
  -- local reg_name = '+'
  local reg = register
  if not reg.name or not reg.file then return end
  local reg_name = reg.name
  local reg_file = reg.file
  local share_type, share_text = read_share(reg_file)
  vim.fn.setreg(reg_name, share_text, share_type)
  -- print(share_type)
  -- print(share_text)
end

local function yank_share(register)
  -- local reg_name = '"'
  local reg = register
  if not reg.name or not reg.file then return end
  local reg_name = reg.name
  local reg_file = reg.file
  local local_text = vim.fn.getreg('"')
  local local_type = vim.fn.getregtype('"')
  vim.fn.setreg(reg_name, local_text, local_type)
  write_share(reg_file, local_type, local_text)
  -- print(local_type)
  -- print(local_text)
end

local function paste_hook()
  vim.keymap.set({'n','x'}, 'po', function() paste_share(reg.unname) return 'p'                      end, { noremap = true, expr = true })
  vim.keymap.set({'n','x'}, 'pp', function() paste_share(reg.unname) return '"'..reg.unname.name..'p'end, { noremap = true, expr = true })
  vim.keymap.set({'n','x'}, 'pu', function() paste_share(reg.yank)   return '"'..reg.yank.name..'p'  end, { noremap = true, expr = true })
  vim.keymap.set({'n','x'}, 'pi', function() paste_share(reg.delete) return '"'..reg.delete.name..'p'end, { noremap = true, expr = true })
  vim.keymap.set({'n','x'}, 'PO', function() paste_share(reg.unname) return 'P'                      end, { noremap = true, expr = true })
  vim.keymap.set({'n','x'}, 'PP', function() paste_share(reg.unname) return '"'..reg.unname.name..'p'end, { noremap = true, expr = true })
  vim.keymap.set({'n','x'}, 'PU', function() paste_share(reg.yank)   return '"'..reg.yank.name..'P'  end, { noremap = true, expr = true })
  vim.keymap.set({'n','x'}, 'PI', function() paste_share(reg.delete) return '"'..reg.delete.name..'P'end, { noremap = true, expr = true })
  vim.api.nvim_create_user_command('PasteShareUnname', function() paste_share(reg.unname) end, {})
  vim.api.nvim_create_user_command('PasteShareYank',   function() paste_share(reg.yank  ) end, {})
  vim.api.nvim_create_user_command('PasteShareDelete', function() paste_share(reg.delete) end, {})
end

local function yank_hook()
  -- vim.api.nvim_create_autocmd('TextYankPost', { callback = yank_share(reg.unname) })
  -- vim.api.nvim_create_autocmd("TextYankPost", {
  vim.api.nvim_create_autocmd("TextYankPost", { pattern = "*",
    callback=function()
      yank_share(reg.unname)
      if     vim.v.event.operator=="y"then yank_share(reg.yank)
      elseif vim.v.event.operator=="d"then yank_share(reg.delete)
      elseif vim.v.event.operator=="c"then yank_share(reg.delete)
      elseif vim.v.event.operator=="x"then yank_share(reg.delete)
      end end })
end

local function main()
  init_env()
  paste_hook()
  yank_hook()
end

main()
