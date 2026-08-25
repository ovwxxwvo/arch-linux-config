-- NVIM config,


vim.keymap.set({'n'}, 'ff',       require('telescope.builtin').find_files, { desc = 'Telescope find files' })
vim.keymap.set({'n'}, 'fg',       require('telescope.builtin').live_grep , { desc = 'Telescope live grep'  })
vim.keymap.set({'n'}, 'fb',       require('telescope.builtin').buffers   , { desc = 'Telescope buffers'    })
vim.keymap.set({'n'}, 'fh',       require('telescope.builtin').help_tags , { desc = 'Telescope help tags'  })

-- vim.keymap.set({"n"}, "<Space>f", function() require("conform").format() end, {desc=""})

vim.keymap.set({"n"}, "<C-t>",    function() vim.cmd('TagbarToggle')     end, {desc=""})

vim.keymap.set({"n"}, "z",        '<Plug>(easymotion-overwin-f)'            , {desc=""})
