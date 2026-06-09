-- NVIM config,


-- cmd="silent ! ~/.config/nvim/lua/keyext/runfile/00.sh '%'"
local script = "~/.config/nvim/lua/runner/runfile/00.sh"
local file   = vim.fn.expand("%")
local server = vim.v.servername
local cmd    = string.format("silent ! %s %s %s", script, file, server)

function runfile()
  vim.cmd(cmd)
  end

return runfile

