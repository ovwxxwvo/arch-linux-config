-- NVIM config,


local function main()

  local uid = vim.loop.getuid()
  local tty = vim.trim(vim.fn.system("tmux display-message -p '#{pane_tty}' |sed 's|/dev/||;s|/||g'"))
  local sock_dir = string.format("/tmp/nvim-%s", uid)
  local sock_file = string.format("/tmp/nvim-%s/%s.sock", uid, tty)
  -- vim.notify(sock_file)

  vim.fn.mkdir(sock_dir, "p")
  -- if vim.loop.fs_stat(sock_file) then
  --   vim.loop.fs_unlink(sock_file)
  -- end
  vim.fn.serverstop(vim.v.servername)
  vim.fn.serverstart(sock_file)

end

main()


