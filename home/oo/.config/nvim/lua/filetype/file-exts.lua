-- NVIM config,


local spec = {

  { { "vim",       "",         }, "vim",        },
  { { "lua",       "",         }, "lua",        },
  { { "sh",        "bsh",      }, "bash",       },
  { { "py",        "pyw",      }, "python",     },

  { { "json",      "jsn",      }, "json",       },
  { { "toml",      "tml",      }, "toml",       },
  { { "yaml",      "yml",      }, "yaml",       },

  { { "dash",      "dsh",      }, "sh",         },
  { { "fish",      "fsh",      }, "fish",       },
  { { "tmux",      "tmx",      }, "tmux",       },
  { { "sway",      "swy",      }, "swayconfig", },

  { { "conf",      "ini",      }, "dosini",     },
  { { "rasi",      "",         }, "dosini",     },
  { { "map",       "inc",      }, "dosini",     },

  { { "html",      "htm",      }, "html"        },
  { { "css",       "",         }, "css"         },
  { { "js",        "jsx",      }, "javascript"  },
  { { "ts",        "tsx",      }, "typescript"  },

  { { "rs",        "rst",      }, "rust",       },
  { { "c",         "cpp",      }, "cpp",        },
  { { "java",      "",         }, "java"        },

  { { "asm",       "s",        }, "asm"         },
  { { "make",      "",         }, "make"        },

  { { "patch",     "diff",     }, "diff"        },
  { { "md",        "markdown", }, "markdown"    },
  { { "tex",       "latex",    }, "tex"         },

  { { "gitignore", "",         }, "gitignore"   },
  { { "desktop",   "",         }, "desktop"     },

}
return spec
