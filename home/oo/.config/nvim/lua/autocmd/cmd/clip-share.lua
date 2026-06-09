-- NVIM config,


local uid        = vim.loop.getuid()
local share_dir  = "/tmp/nvim-" .. uid
local share_file = share_dir .. "/clip-share"

local function init_env()
  if vim.fn.isdirectory(share_dir) == 0 then
    vim.fn.mkdir(share_dir, "p")
  end
end

local function read_share()
  local ok, lines = pcall(vim.fn.readfile, share_file)
  if not ok or #lines < 2 then return nil, nil end
  local share_type = lines[1]
  local share_text = table.concat(lines, "\n", 2)
  -- print(share_text)
  return share_type, share_text
end

local function write_share(reg_type, reg_text)
  vim.fn.writefile({ reg_type, reg_text }, share_file)
  -- print(reg_text)
end

local function paste_share()
  local register = '+'
  local share_type, share_text = read_share()
  local local_text = vim.fn.getreg(register):gsub("\n*$", "")
  if local_text == share_text then
    vim.fn.setreg(register, share_text, share_type)
  end
  -- print(share_type)
  -- print(share_text)
end

local function yank_share()
  local register = '"'
  local local_text = vim.fn.getreg(register)
  local local_type = vim.fn.getregtype(register)
  write_share(local_type, local_text)
  -- print(local_type)
  -- print(local_text)
end

local function paste_hook()
  vim.keymap.set({"n", "v"}, "p",
    function() paste_share() return "p" end,
    { expr = true })
  vim.keymap.set({"n", "v"}, "P",
    function() paste_share() return "P" end,
    { expr = true })
  vim.api.nvim_create_user_command('PasteShare', paste_share, {})
end

local function yank_hook()
  vim.api.nvim_create_autocmd("TextYankPost",
  {callback = yank_share })
end

local function main()
  init_env()
  paste_hook()
  yank_hook()
end

main()
