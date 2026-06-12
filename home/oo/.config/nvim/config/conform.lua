-- NVIM config,


require("conform").setup({

  formatters_by_ft = {
    lua = { "stylua" },
    python = { "isort", "black" },
    -- rust = { "rustfmt", lsp_format = "fallback" },
    javascript = { "prettierd", "prettier", stop_after_first = true },
    typescript = { "prettierd", "prettier", stop_after_first = true },
    html       = { "prettier" },
    css        = { "prettier" },
    json       = { "prettier" },
    vue        = { "prettier" },
    },

  default_format_opts = {
    lsp_format = "fallback",
  },

  format_on_save = false,
  -- format_on_save = {
    --   timeout_ms = 500,
    --   lsp_fallback = true,
    -- },

})

require("mini.align").setup({

  mappings = {
    start = 'ga',
    start_with_preview = 'gA'
  }

})

