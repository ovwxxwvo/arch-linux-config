-- NVIM config,


local M = {}
  -- ' " ( [ { <
  -- ' " ) } } >

M.easy_match = function()
end

vim.api.nvim_create_user_command('EasyMatch', M.easy_match, {})

return M
