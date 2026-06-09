-- NVIM config,


require("telescope").setup({
  defaults = {
    mappings = {
      i = {
        ["<S-Tab>"] = "move_selection_previous",
        ["<Tab>"]   = "move_selection_next",
        ["<C-q>"]   = "close",
        -- ["<C-i>"]   = "results_scrolling_up",
        -- ["<C-o>"]   = "results_scrolling_down",
      },
      n = {
        ["<CR>"]  = "select_default",
        ["<esc>"] = "close",
        ["q"]     = "close",
        ["k"]     = "move_selection_previous",
        ["l"]     = "move_selection_next",
        ["i"]     = "results_scrolling_up",
        ["o"]     = "results_scrolling_down",
      },
    }
  },
})

require("telescope").load_extension('fzf')

vim.api.nvim_create_autocmd("FileType", {
  pattern = "TelescopeResults",
  command = "setlocal nofoldenable",
})
