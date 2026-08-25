-- NVIM config,


local spec = {

{ ft = { "lua"        }, cmd = { "stylua",        "",            }         },
{ ft = { "sh"         }, cmd = { "shfmt",         "-w",          }         },
{ ft = { "python"     }, cmd = { "black",         "",            }         },
{ ft = { "json"       }, cmd = { "prettier",      "--write",     }         },
{ ft = { "html"       }, cmd = { "prettier",      "--write",     }         },
{ ft = { "css"        }, cmd = { "prettier",      "--write",     }         },
{ ft = { "javascript" }, cmd = { "prettier",      "--write",     }         },
{ ft = { "rust"       }, cmd = { "rustfmt",       "",            }         },
{ ft = { "c", "cpp"   }, cmd = { "clang-format",  "-i",          }         },
{ ft = { "meson",     }, cmd = { "meson",         "format", "-i" },        },

}
return spec
