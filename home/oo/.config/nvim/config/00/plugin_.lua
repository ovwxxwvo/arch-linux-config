-- NVIM config,


local module = 'lazy'
if not pcall(require, module) then return end

require(module).setup{
  defaults = { lazy  = false, },
  -- install = { colorscheme = { 'habamax' } },
  spec = {

{ 'asymotion/vim-easymotion',                                   },
  { 'majutsushi/tagbar',                                        },
  { 'yggdroot/indentline',                                      },
  { 'sbdchd/neoformat',                                         },
  { 'junegunn/vim-easy-align',                                  },
  { 'tomtom/tcomment_vim',                                      },
  { 'tpope/vim-surround',                                       },
  { 'tpope/vim-repeat',                                         },

{ 'mikavilpas/yazi.nvim',                                       },
  { 'nvim-lua/plenary.nvim',                                    },

{ 'williamboman/mason.nvim',                                    },
  { 'saghen/blink.cmp',                                         },
  { 'rafamadriz/friendly-snippets',                             },

{ 'nvim-telescope/telescope.nvim',                              },
  { 'nvim-lua/plenary.nvim',                                    },
  { 'BurntSushi/ripgrep',                                       },
  { 'sharkdp/fd',                                               },
  { 'nvim-telescope/telescope-fzf-native.nvim', build='make'    },

{ 'nvim-lualine/lualine.nvim',                                  },
  { 'nvim-tree/nvim-web-devicons',                              },

{ 'folke/noice.nvim',                                           },
  { 'MunifTanjim/nui.nvim',                                     },
  { 'rcarriga/nvim-notify',                                     },
  { 'folke/which-key.nvim',                                     },

{ 'iamcco/markdown-preview.nvim', build='cd app && yarn install'},
  { 'dhruvasagar/vim-table-mode',                               },

-- { 'hrsh7th/nvim-cmp',
  -- dependencies = {
  -- 'hrsh7th/cmp-nvim-lsp',
  -- 'hrsh7th/cmp-nvim-lsp-document-symbol',
  -- 'hrsh7th/cmp-nvim-lsp-signature-help',
  -- --
  -- 'hrsh7th/cmp-buffer',
  -- 'hrsh7th/cmp-cmdline',
  -- 'hrsh7th/cmp-path',
  -- --
  -- 'dcampos/nvim-snippy',
  -- 'dcampos/cmp-snippy',
  -- -- 'hrsh7th/cmp-vsnip',
  -- -- 'hrsh7th/vim-vsnip',
  -- -- 'saadparwaiz1/cmp_luasnip',
  -- -- 'L3MON4D3/LuaSnip',
  -- --
  -- 'windwp/nvim-autopairs',
  -- 'andersevenrud/cmp-tmux',
  -- 'mtoohey31/cmp-fish',
  -- 'folke/lazydev.nvim',
  -- 'zjp-CN/nvim-cmp-lsp-rs',
  -- --
  -- 'f3fora/cmp-spell',
  -- 'uga-rosa/cmp-dictionary',
  -- -- 'hrsh7th/cmp-copilot',
  -- }, },

} }


