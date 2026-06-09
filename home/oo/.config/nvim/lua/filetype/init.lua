-- NVIM config,


local M = {}

M.setup = function()
  local file_exts = require("filetype.file-exts")
  local file_name = require("filetype.file-name")


  local function set_filetype()
    local path = vim.api.nvim_buf_get_name(0)
    local e = vim.fn.fnamemodify(path, ":e")
    local n = vim.fn.fnamemodify(path, ":t")
    -- print(n)

    for i, f in ipairs(file_name) do
      local name = f[1]
      local type = f[2]
      if vim.tbl_contains(name, n) then
        vim.api.nvim_buf_set_option(0, "filetype", type)
        return
      end
    end

    for i, f in ipairs(file_exts) do
      local exts = f[1]
      local type = f[2]
      if vim.tbl_contains(exts, e) then
        vim.api.nvim_buf_set_option(0, "filetype", type)
        vim.cmd("silent! edit")
        return
      end
    end

  end

  -- vim.api.nvim_create_autocmd({ "FileType" }, {
  vim.api.nvim_create_autocmd({ "BufEnter" }, {
    callback = set_filetype
  })
end

-- M.setup()
return M
