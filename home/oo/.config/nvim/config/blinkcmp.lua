-- NVIM config,


require('blink.cmp').setup({

  keymap     = {
    -- preset = 'default',
    preset      = 'none',
    ['<CR>']    = { 'select_and_accept', 'fallback' },
    ['<Tab>']   = { 'select_next', 'snippet_forward', 'fallback_to_mappings' },
    ['<S-Tab>'] = { 'select_prev', 'snippet_backward', 'fallback_to_mappings' },
    ['<Up>']    = { 'select_prev', 'snippet_forward', 'fallback' },
    ['<Down>']  = { 'select_next', 'snippet_backward', 'fallback' },
  },

  sources    = {
    default   = { 'lsp', 'path', 'buffer', 'snippets', },
    providers = {
      path = { opts = { get_cwd = function() return vim.fn.getcwd() end } }
    }
  },

  completion = {
    ghost_text    = { enabled = true },
    accept        = { auto_brackets = { enabled = true } },
    list          = { selection = { preselect = true, auto_insert = true }, },
    documentation = { auto_show = true, auto_show_delay_ms = 500, },
    keyword       = { range = 'full', },
    trigger       = {
      show_on_blocked_trigger_characters   = { ' ', '\t', '\n' },
      show_on_keyword                      = true,
      show_on_trigger_character            = true,
      show_on_backspace                    = false,
      show_on_backspace_in_keyword         = false,
      show_on_backspace_after_accept       = false,
      show_on_backspace_after_insert_enter = false,
    },
    menu          = {
      draw   = {
        columns = {
          { 'kind_icon' },
          { 'label',    'label_description', gap = 1 } },
      },
      border = 'single'
    },
  },

  cmdline    = {
    keymap     = {
      preset      = 'none',
      ['<CR>']    = { 'accept_and_enter', 'fallback' },
      ['<Tab>']   = { 'select_next', 'fallback_to_mappings' },
      ['<S-Tab>'] = { 'select_prev', 'fallback_to_mappings' },
      ['<Up>']    = { 'select_prev', 'fallback' },
      ['<Down>']  = { 'select_next', 'fallback' },
    },
    completion = {
      ghost_text = { enabled = true },
      menu       = { auto_show = true },
    },

  },

  signature  = {
    enabled = true,
    window  = { border = 'single' },
  },

  appearance = {
    highlight_ns = vim.api.nvim_create_namespace('blink_cmp'),
    nerd_font_variant = 'mono',
    use_nvim_cmp_as_default = false,
  },

})
