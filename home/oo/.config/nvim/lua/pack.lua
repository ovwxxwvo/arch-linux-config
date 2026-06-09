-- NVIM config,


local packs = {

  { 'easymotion/vim-easymotion',                },
  { 'majutsushi/tagbar',                        },
  { 'yggdroot/indentline',                      },
  { 'tomtom/tcomment_vim',                      },

  { 'mikavilpas/yazi.nvim',                     },
  { 'nvim-lua/plenary.nvim',                    },

  { 'stevearc/conform.nvim',                    },
  { 'echasnovski/mini.align',                   },
  { 'echasnovski/mini.surround',                },

  { 'saghen/blink.cmp',                         build = 'cargo build --release' },
  { 'rafamadriz/friendly-snippets',             },
  { 'folke/neodev.nvim',                        },

  { 'nvim-telescope/telescope.nvim',            },
  { 'nvim-lua/plenary.nvim',                    },
  { 'BurntSushi/ripgrep',                       },
  { 'sharkdp/fd',                               },
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },

  { 'folke/noice.nvim',                         },
  { 'MunifTanjim/nui.nvim',                     },
  { 'rcarriga/nvim-notify',                     },
  { 'folke/which-key.nvim',                     },

  { 'nvim-lualine/lualine.nvim',                },
  { 'nvim-tree/nvim-web-devicons',              },

  { 'toppair/peek.nvim',                        build = "deno task --quiet build:fast" },
  { 'dhruvasagar/vim-table-mode',               },

}
  -- { 'neovim/nvim-lspconfig' },
  -- { 'iamcco/markdown-preview.nvim',             build = 'cd app && yarn install' },


return packs
