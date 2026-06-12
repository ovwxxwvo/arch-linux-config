-- NVIM config,


require('peek').setup({

  -- app = 'webview',      -- 'webview', 'browser', string or a table of strings
  -- app = { 'firefox', '--new-window', },
  app = { 'firefox', '--new-instance', '--profile', '/home/oo/.mozilla/firefox/barless/' },

  filetype = { 'markdown' }, -- list of filetypes to recognize as markdown
  theme = 'dark',            -- 'dark' or 'light'
  syntax = true,             -- enable syntax highlighting, affects performance

  close_on_bdelete = true,   -- close preview window on buffer delete
  auto_load = true,          -- whether to automatically load preview when
  update_on_change = true,
  throttle_time = 'auto',    -- minimum amount of time in milliseconds
  throttle_at = 200000,      -- start throttling when file exceeds this

})


local peek = require('peek')

peek.toggle = function()
  if peek.is_open() then
    peek.close()
  else
    peek.open()
  end
end

vim.api.nvim_create_user_command('PeekOpen', peek.open, {})
vim.api.nvim_create_user_command('PeekClose', peek.close, {})
vim.api.nvim_create_user_command('PeekToggle', peek.toggle, {})
