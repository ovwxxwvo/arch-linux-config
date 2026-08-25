-- NVIM config,


require("conform").setup({

  formatters_by_ft = {
    lua = { "stylua" },
    python = { "isort", "black" },
    -- rust = { "rustfmt", lsp_format = "fallback" },
    javascript = { "prettier", "prettier", stop_after_first = true },
    typescript = { "prettier", "prettier", stop_after_first = true },
    html       = { "prettier" },
    css        = { "prettier" },
    json       = { "prettier" },
    vue        = { "prettier" },
    meson      = { "meson_fmt" },
    -- meson      = { "meson build" },
    },

    formatters = {
      meson_fmt = {
        cmd = "meson",
        args = { "format", "-i" },
        stdin = true,
      },
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
    start              = 'ga',
    start_with_preview = 'gA'
  }

})

